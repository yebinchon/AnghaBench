
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_preparsed_payload {void* data; size_t datalen; } ;


 int user_preparse (struct key_preparsed_payload*) ;

__attribute__((used)) static int pkcs7_view_content(void *ctx, const void *data, size_t len,
         size_t asn1hdrlen)
{
 struct key_preparsed_payload *prep = ctx;
 const void *saved_prep_data;
 size_t saved_prep_datalen;
 int ret;

 saved_prep_data = prep->data;
 saved_prep_datalen = prep->datalen;
 prep->data = data;
 prep->datalen = len;

 ret = user_preparse(prep);

 prep->data = saved_prep_data;
 prep->datalen = saved_prep_datalen;
 return ret;
}
