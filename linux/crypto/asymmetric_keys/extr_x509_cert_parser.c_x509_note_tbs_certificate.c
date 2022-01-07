
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x509_parse_context {TYPE_1__* cert; scalar_t__ data; } ;
struct TYPE_2__ {size_t tbs_size; void const* tbs; } ;


 int pr_debug (char*,size_t,unsigned char,scalar_t__,size_t) ;

int x509_note_tbs_certificate(void *context, size_t hdrlen,
         unsigned char tag,
         const void *value, size_t vlen)
{
 struct x509_parse_context *ctx = context;

 pr_debug("x509_note_tbs_certificate(,%zu,%02x,%ld,%zu)!\n",
   hdrlen, tag, (unsigned long)value - ctx->data, vlen);

 ctx->cert->tbs = value - hdrlen;
 ctx->cert->tbs_size = vlen + hdrlen;
 return 0;
}
