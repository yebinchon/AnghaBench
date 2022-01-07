
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pkcs7_parse_context {TYPE_1__* msg; } ;
struct TYPE_2__ {size_t data_len; size_t data_hdrlen; void const* data; } ;


 int pr_debug (char*) ;

int pkcs7_note_data(void *context, size_t hdrlen,
      unsigned char tag,
      const void *value, size_t vlen)
{
 struct pkcs7_parse_context *ctx = context;

 pr_debug("Got data\n");

 ctx->msg->data = value;
 ctx->msg->data_len = vlen;
 ctx->msg->data_hdrlen = hdrlen;
 return 0;
}
