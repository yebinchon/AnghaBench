
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecrdsa_ctx {size_t key_len; void const* key; } ;



int ecrdsa_parse_pub_key(void *context, size_t hdrlen, unsigned char tag,
    const void *value, size_t vlen)
{
 struct ecrdsa_ctx *ctx = context;

 ctx->key = value;
 ctx->key_len = vlen;
 return 0;
}
