
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pkcs7_signed_info {scalar_t__ signing_time; int index; int sig; TYPE_1__* signer; int aa_set; } ;
struct pkcs7_message {int dummy; } ;
struct TYPE_2__ {scalar_t__ valid_from; scalar_t__ valid_to; int pub; int index; } ;


 int EKEYREJECTED ;
 int kenter (char*,int ) ;
 int pkcs7_digest (struct pkcs7_message*,struct pkcs7_signed_info*) ;
 int pkcs7_find_key (struct pkcs7_message*,struct pkcs7_signed_info*) ;
 int pkcs7_verify_sig_chain (struct pkcs7_message*,struct pkcs7_signed_info*) ;
 int pr_devel (char*,int ,...) ;
 int pr_warn (char*) ;
 int public_key_verify_signature (int ,int ) ;
 int sinfo_has_signing_time ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int pkcs7_verify_one(struct pkcs7_message *pkcs7,
       struct pkcs7_signed_info *sinfo)
{
 int ret;

 kenter(",%u", sinfo->index);




 ret = pkcs7_digest(pkcs7, sinfo);
 if (ret < 0)
  return ret;


 ret = pkcs7_find_key(pkcs7, sinfo);
 if (ret < 0)
  return ret;

 if (!sinfo->signer)
  return 0;

 pr_devel("Using X.509[%u] for sig %u\n",
   sinfo->signer->index, sinfo->index);





 if (test_bit(sinfo_has_signing_time, &sinfo->aa_set)) {
  if (sinfo->signing_time < sinfo->signer->valid_from ||
      sinfo->signing_time > sinfo->signer->valid_to) {
   pr_warn("Message signed outside of X.509 validity window\n");
   return -EKEYREJECTED;
  }
 }


 ret = public_key_verify_signature(sinfo->signer->pub, sinfo->sig);
 if (ret < 0)
  return ret;

 pr_devel("Verified signature %u\n", sinfo->index);


 return pkcs7_verify_sig_chain(pkcs7, sinfo);
}
