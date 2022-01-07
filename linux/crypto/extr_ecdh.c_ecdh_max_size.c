
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecdh_ctx {int ndigits; } ;
struct crypto_kpp {int dummy; } ;


 int ECC_DIGITS_TO_BYTES_SHIFT ;
 struct ecdh_ctx* ecdh_get_ctx (struct crypto_kpp*) ;

__attribute__((used)) static unsigned int ecdh_max_size(struct crypto_kpp *tfm)
{
 struct ecdh_ctx *ctx = ecdh_get_ctx(tfm);


 return ctx->ndigits << (ECC_DIGITS_TO_BYTES_SHIFT + 1);
}
