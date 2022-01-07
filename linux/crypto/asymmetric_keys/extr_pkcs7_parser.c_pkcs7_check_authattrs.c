
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkcs7_signed_info {scalar_t__ authattrs; struct pkcs7_signed_info* next; } ;
struct pkcs7_message {int have_authattrs; struct pkcs7_signed_info* signed_infos; } ;


 int EINVAL ;
 int pr_warn (char*) ;

__attribute__((used)) static int pkcs7_check_authattrs(struct pkcs7_message *msg)
{
 struct pkcs7_signed_info *sinfo;
 bool want = 0;

 sinfo = msg->signed_infos;
 if (!sinfo)
  goto inconsistent;

 if (sinfo->authattrs) {
  want = 1;
  msg->have_authattrs = 1;
 }

 for (sinfo = sinfo->next; sinfo; sinfo = sinfo->next)
  if (!!sinfo->authattrs != want)
   goto inconsistent;
 return 0;

inconsistent:
 pr_warn("Inconsistently supplied authAttrs\n");
 return -EINVAL;
}
