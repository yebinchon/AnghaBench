
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct crypto_blkcipher {int dummy; } ;


 int crypto_free_blkcipher (struct crypto_blkcipher*) ;
 struct crypto_blkcipher** crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void crypto_exit_skcipher_ops_blkcipher(struct crypto_tfm *tfm)
{
 struct crypto_blkcipher **ctx = crypto_tfm_ctx(tfm);

 crypto_free_blkcipher(*ctx);
}
