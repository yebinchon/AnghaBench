
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pkcs7_parse_context {int * certs; int ** ppcerts; TYPE_1__* msg; } ;
struct TYPE_2__ {int * certs; } ;


 int pr_devel (char*,unsigned char) ;

int pkcs7_note_certificate_list(void *context, size_t hdrlen,
    unsigned char tag,
    const void *value, size_t vlen)
{
 struct pkcs7_parse_context *ctx = context;

 pr_devel("Got cert list (%02x)\n", tag);

 *ctx->ppcerts = ctx->msg->certs;
 ctx->msg->certs = ctx->certs;
 ctx->certs = ((void*)0);
 ctx->ppcerts = &ctx->certs;
 return 0;
}
