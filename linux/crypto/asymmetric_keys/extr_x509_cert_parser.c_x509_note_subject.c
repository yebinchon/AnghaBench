
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x509_parse_context {TYPE_1__* cert; } ;
struct TYPE_2__ {size_t raw_subject_size; int subject; void const* raw_subject; } ;


 int x509_fabricate_name (struct x509_parse_context*,size_t,unsigned char,int *,size_t) ;

int x509_note_subject(void *context, size_t hdrlen,
        unsigned char tag,
        const void *value, size_t vlen)
{
 struct x509_parse_context *ctx = context;
 ctx->cert->raw_subject = value;
 ctx->cert->raw_subject_size = vlen;
 return x509_fabricate_name(ctx, hdrlen, tag, &ctx->cert->subject, vlen);
}
