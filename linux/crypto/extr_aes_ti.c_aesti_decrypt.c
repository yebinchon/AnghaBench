
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;
struct crypto_aes_ctx {int dummy; } ;


 int aes_decrypt (struct crypto_aes_ctx const*,int *,int const*) ;
 struct crypto_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void aesti_decrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 const struct crypto_aes_ctx *ctx = crypto_tfm_ctx(tfm);
 unsigned long flags;





 local_irq_save(flags);

 aes_decrypt(ctx, out, in);

 local_irq_restore(flags);
}
