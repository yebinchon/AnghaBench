
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkcs8_parse_context {size_t key_size; void const* key; } ;



int pkcs8_note_key(void *context, size_t hdrlen,
     unsigned char tag,
     const void *value, size_t vlen)
{
 struct pkcs8_parse_context *ctx = context;

 ctx->key = value;
 ctx->key_size = vlen;
 return 0;
}
