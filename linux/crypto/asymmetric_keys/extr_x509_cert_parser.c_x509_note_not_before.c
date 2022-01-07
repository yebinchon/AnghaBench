
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x509_parse_context {TYPE_1__* cert; } ;
struct TYPE_2__ {int valid_from; } ;


 int x509_decode_time (int *,size_t,unsigned char,void const*,size_t) ;

int x509_note_not_before(void *context, size_t hdrlen,
    unsigned char tag,
    const void *value, size_t vlen)
{
 struct x509_parse_context *ctx = context;
 return x509_decode_time(&ctx->cert->valid_from, hdrlen, tag, value, vlen);
}
