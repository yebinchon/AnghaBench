
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_parse_context {size_t blob_len; void const* blob; } ;



int tpm_note_key(void *context, size_t hdrlen,
     unsigned char tag,
     const void *value, size_t vlen)
{
 struct tpm_parse_context *ctx = context;

 ctx->blob = value;
 ctx->blob_len = vlen;

 return 0;
}
