
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aes_ctx {int key_length; } ;



__attribute__((used)) static int num_rounds(struct crypto_aes_ctx *ctx)
{







 return 6 + ctx->key_length / 4;
}
