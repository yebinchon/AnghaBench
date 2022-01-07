
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x509_parse_context {int last_oid; size_t cn_size; size_t o_size; size_t email_size; int data; int email_offset; int o_offset; int cn_offset; } ;






int x509_extract_name_segment(void *context, size_t hdrlen,
         unsigned char tag,
         const void *value, size_t vlen)
{
 struct x509_parse_context *ctx = context;

 switch (ctx->last_oid) {
 case 130:
  ctx->cn_size = vlen;
  ctx->cn_offset = (unsigned long)value - ctx->data;
  break;
 case 128:
  ctx->o_size = vlen;
  ctx->o_offset = (unsigned long)value - ctx->data;
  break;
 case 129:
  ctx->email_size = vlen;
  ctx->email_offset = (unsigned long)value - ctx->data;
  break;
 default:
  break;
 }

 return 0;
}
