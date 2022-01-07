
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_preparsed_payload {int datalen; int data; } ;
typedef enum key_being_used_for { ____Placeholder_key_being_used_for } key_being_used_for ;


 int EINVAL ;
 int NR__KEY_BEING_USED_FOR ;
 int VERIFY_USE_SECONDARY_KEYRING ;
 int pkcs7_usage ;
 int pkcs7_view_content ;
 int pr_err (char*,int) ;
 int verify_pkcs7_signature (int *,int ,int ,int ,int ,int,int ,struct key_preparsed_payload*) ;

__attribute__((used)) static int pkcs7_preparse(struct key_preparsed_payload *prep)
{
 enum key_being_used_for usage = pkcs7_usage;

 if (usage >= NR__KEY_BEING_USED_FOR) {
  pr_err("Invalid usage type %d\n", usage);
  return -EINVAL;
 }

 return verify_pkcs7_signature(((void*)0), 0,
          prep->data, prep->datalen,
          VERIFY_USE_SECONDARY_KEYRING, usage,
          pkcs7_view_content, prep);
}
