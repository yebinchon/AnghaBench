
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkcs7_message {size_t data_len; void const* data; } ;


 int EINVAL ;
 int pr_debug (char*) ;

int pkcs7_supply_detached_data(struct pkcs7_message *pkcs7,
          const void *data, size_t datalen)
{
 if (pkcs7->data) {
  pr_debug("Data already supplied\n");
  return -EINVAL;
 }
 pkcs7->data = data;
 pkcs7->data_len = datalen;
 return 0;
}
