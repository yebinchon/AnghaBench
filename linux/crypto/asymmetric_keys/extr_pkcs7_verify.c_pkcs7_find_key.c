
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct x509_certificate {TYPE_1__* pub; int id; struct x509_certificate* next; } ;
struct pkcs7_signed_info {TYPE_2__* sig; int index; struct x509_certificate* signer; } ;
struct pkcs7_message {struct x509_certificate* certs; } ;
struct TYPE_6__ {int data; int len; } ;
struct TYPE_5__ {TYPE_3__** auth_ids; int pkey_algo; } ;
struct TYPE_4__ {int pkey_algo; } ;


 int asymmetric_key_id_same (int ,TYPE_3__*) ;
 int kenter (char*,int ) ;
 int pr_debug (char*,int ,int ,int ) ;
 int pr_devel (char*,int ,unsigned int) ;
 int pr_warn (char*,int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int pkcs7_find_key(struct pkcs7_message *pkcs7,
     struct pkcs7_signed_info *sinfo)
{
 struct x509_certificate *x509;
 unsigned certix = 1;

 kenter("%u", sinfo->index);

 for (x509 = pkcs7->certs; x509; x509 = x509->next, certix++) {





  if (!asymmetric_key_id_same(x509->id, sinfo->sig->auth_ids[0]))
   continue;
  pr_devel("Sig %u: Found cert serial match X.509[%u]\n",
    sinfo->index, certix);

  if (strcmp(x509->pub->pkey_algo, sinfo->sig->pkey_algo) != 0) {
   pr_warn("Sig %u: X.509 algo and PKCS#7 sig algo don't match\n",
    sinfo->index);
   continue;
  }

  sinfo->signer = x509;
  return 0;
 }




 pr_debug("Sig %u: Issuing X.509 cert not found (#%*phN)\n",
   sinfo->index,
   sinfo->sig->auth_ids[0]->len, sinfo->sig->auth_ids[0]->data);
 return 0;
}
