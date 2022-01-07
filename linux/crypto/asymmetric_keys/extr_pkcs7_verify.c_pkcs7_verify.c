
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkcs7_signed_info {int unsupported_crypto; scalar_t__ blacklisted; struct pkcs7_signed_info* next; } ;
struct pkcs7_message {struct pkcs7_signed_info* signed_infos; int data_type; int have_authattrs; } ;
typedef enum key_being_used_for { ____Placeholder_key_being_used_for } key_being_used_for ;


 int EINVAL ;
 int EKEYREJECTED ;
 int ENOPKG ;
 int OID_data ;
 int OID_msIndirectData ;




 int kenter (char*) ;
 int kleave (char*,int) ;
 int pkcs7_verify_one (struct pkcs7_message*,struct pkcs7_signed_info*) ;
 int pr_warn (char*) ;

int pkcs7_verify(struct pkcs7_message *pkcs7,
   enum key_being_used_for usage)
{
 struct pkcs7_signed_info *sinfo;
 int actual_ret = -ENOPKG;
 int ret;

 kenter("");

 switch (usage) {
 case 129:
  if (pkcs7->data_type != OID_data) {
   pr_warn("Invalid module sig (not pkcs7-data)\n");
   return -EKEYREJECTED;
  }
  if (pkcs7->have_authattrs) {
   pr_warn("Invalid module sig (has authattrs)\n");
   return -EKEYREJECTED;
  }
  break;
 case 131:
  if (pkcs7->data_type != OID_data) {
   pr_warn("Invalid firmware sig (not pkcs7-data)\n");
   return -EKEYREJECTED;
  }
  if (!pkcs7->have_authattrs) {
   pr_warn("Invalid firmware sig (missing authattrs)\n");
   return -EKEYREJECTED;
  }
  break;
 case 130:
  if (pkcs7->data_type != OID_msIndirectData) {
   pr_warn("Invalid kexec sig (not Authenticode)\n");
   return -EKEYREJECTED;
  }

  break;
 case 128:
  if (pkcs7->data_type != OID_data) {
   pr_warn("Invalid unspecified sig (not pkcs7-data)\n");
   return -EKEYREJECTED;
  }
  break;
 default:
  return -EINVAL;
 }

 for (sinfo = pkcs7->signed_infos; sinfo; sinfo = sinfo->next) {
  ret = pkcs7_verify_one(pkcs7, sinfo);
  if (sinfo->blacklisted) {
   if (actual_ret == -ENOPKG)
    actual_ret = -EKEYREJECTED;
   continue;
  }
  if (ret < 0) {
   if (ret == -ENOPKG) {
    sinfo->unsupported_crypto = 1;
    continue;
   }
   kleave(" = %d", ret);
   return ret;
  }
  actual_ret = 0;
 }

 kleave(" = %d", actual_ret);
 return actual_ret;
}
