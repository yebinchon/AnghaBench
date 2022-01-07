
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkcs7_message {void* data; size_t data_len; size_t data_hdrlen; } ;


 int ENODATA ;

int pkcs7_get_content_data(const struct pkcs7_message *pkcs7,
      const void **_data, size_t *_data_len,
      size_t *_headerlen)
{
 if (!pkcs7->data)
  return -ENODATA;

 *_data = pkcs7->data;
 *_data_len = pkcs7->data_len;
 if (_headerlen)
  *_headerlen = pkcs7->data_hdrlen;
 return 0;
}
