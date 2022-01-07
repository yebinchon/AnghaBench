
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prng_context {int tfm; } ;


 int crypto_free_cipher (int ) ;

__attribute__((used)) static void free_prng_context(struct prng_context *ctx)
{
 crypto_free_cipher(ctx->tfm);
}
