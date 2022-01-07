
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x509_parse_context {size_t params_size; void const* params; scalar_t__ key; TYPE_1__* cert; } ;
struct TYPE_2__ {int raw_subject; } ;



int x509_note_params(void *context, size_t hdrlen,
       unsigned char tag,
       const void *value, size_t vlen)
{
 struct x509_parse_context *ctx = context;






 if (!ctx->cert->raw_subject || ctx->key)
  return 0;
 ctx->params = value - hdrlen;
 ctx->params_size = vlen + hdrlen;
 return 0;
}
