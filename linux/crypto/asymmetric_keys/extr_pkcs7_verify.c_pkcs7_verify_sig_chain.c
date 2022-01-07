
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x509_certificate {int seen; int blacklisted; struct x509_certificate* signer; struct public_key_signature* sig; int pub; int subject; int index; TYPE_1__* skid; struct x509_certificate* next; TYPE_1__* id; scalar_t__ unsupported_sig; scalar_t__ self_signed; int issuer; scalar_t__ unsupported_key; int raw_serial; int raw_serial_size; } ;
struct public_key_signature {struct asymmetric_key_id** auth_ids; } ;
struct pkcs7_signed_info {int blacklisted; int index; struct x509_certificate* signer; } ;
struct pkcs7_message {struct x509_certificate* certs; } ;
struct asymmetric_key_id {int data; int len; } ;
struct TYPE_2__ {int data; int len; } ;


 int EKEYREJECTED ;
 scalar_t__ asymmetric_key_id_same (TYPE_1__*,struct asymmetric_key_id*) ;
 int kenter (char*) ;
 int might_sleep () ;
 int pr_debug (char*,...) ;
 int pr_warn (char*,int ,...) ;
 int public_key_verify_signature (int ,struct public_key_signature*) ;

__attribute__((used)) static int pkcs7_verify_sig_chain(struct pkcs7_message *pkcs7,
      struct pkcs7_signed_info *sinfo)
{
 struct public_key_signature *sig;
 struct x509_certificate *x509 = sinfo->signer, *p;
 struct asymmetric_key_id *auth;
 int ret;

 kenter("");

 for (p = pkcs7->certs; p; p = p->next)
  p->seen = 0;

 for (;;) {
  pr_debug("verify %s: %*phN\n",
    x509->subject,
    x509->raw_serial_size, x509->raw_serial);
  x509->seen = 1;

  if (x509->blacklisted) {



   sinfo->blacklisted = 1;
   for (p = sinfo->signer; p != x509; p = p->signer)
    p->blacklisted = 1;
   pr_debug("- blacklisted\n");
   return 0;
  }

  if (x509->unsupported_key)
   goto unsupported_crypto_in_x509;

  pr_debug("- issuer %s\n", x509->issuer);
  sig = x509->sig;
  if (sig->auth_ids[0])
   pr_debug("- authkeyid.id %*phN\n",
     sig->auth_ids[0]->len, sig->auth_ids[0]->data);
  if (sig->auth_ids[1])
   pr_debug("- authkeyid.skid %*phN\n",
     sig->auth_ids[1]->len, sig->auth_ids[1]->data);

  if (x509->self_signed) {





   if (x509->unsupported_sig)
    goto unsupported_crypto_in_x509;
   x509->signer = x509;
   pr_debug("- self-signed\n");
   return 0;
  }




  auth = sig->auth_ids[0];
  if (auth) {
   pr_debug("- want %*phN\n", auth->len, auth->data);
   for (p = pkcs7->certs; p; p = p->next) {
    pr_debug("- cmp [%u] %*phN\n",
      p->index, p->id->len, p->id->data);
    if (asymmetric_key_id_same(p->id, auth))
     goto found_issuer_check_skid;
   }
  } else if (sig->auth_ids[1]) {
   auth = sig->auth_ids[1];
   pr_debug("- want %*phN\n", auth->len, auth->data);
   for (p = pkcs7->certs; p; p = p->next) {
    if (!p->skid)
     continue;
    pr_debug("- cmp [%u] %*phN\n",
      p->index, p->skid->len, p->skid->data);
    if (asymmetric_key_id_same(p->skid, auth))
     goto found_issuer;
   }
  }


  pr_debug("- top\n");
  return 0;

 found_issuer_check_skid:



  if (sig->auth_ids[1] &&
      !asymmetric_key_id_same(p->skid, sig->auth_ids[1])) {
   pr_warn("Sig %u: X.509 chain contains auth-skid nonmatch (%u->%u)\n",
    sinfo->index, x509->index, p->index);
   return -EKEYREJECTED;
  }
 found_issuer:
  pr_debug("- subject %s\n", p->subject);
  if (p->seen) {
   pr_warn("Sig %u: X.509 chain contains loop\n",
    sinfo->index);
   return 0;
  }
  ret = public_key_verify_signature(p->pub, x509->sig);
  if (ret < 0)
   return ret;
  x509->signer = p;
  if (x509 == p) {
   pr_debug("- self-signed\n");
   return 0;
  }
  x509 = p;
  might_sleep();
 }

unsupported_crypto_in_x509:






 return 0;
}
