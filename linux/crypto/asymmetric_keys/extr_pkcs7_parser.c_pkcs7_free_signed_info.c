
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkcs7_signed_info {int sig; } ;


 int kfree (struct pkcs7_signed_info*) ;
 int public_key_signature_free (int ) ;

__attribute__((used)) static void pkcs7_free_signed_info(struct pkcs7_signed_info *sinfo)
{
 if (sinfo) {
  public_key_signature_free(sinfo->sig);
  kfree(sinfo);
 }
}
