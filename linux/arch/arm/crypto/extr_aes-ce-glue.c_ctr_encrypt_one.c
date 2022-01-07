
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;
struct crypto_aes_ctx {int dummy; } ;


 int aes_encrypt (struct crypto_aes_ctx*,int *,int const*) ;
 struct crypto_aes_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void ctr_encrypt_one(struct crypto_skcipher *tfm, const u8 *src, u8 *dst)
{
 struct crypto_aes_ctx *ctx = crypto_skcipher_ctx(tfm);
 unsigned long flags;






 local_irq_save(flags);
 aes_encrypt(ctx, dst, src);
 local_irq_restore(flags);
}
