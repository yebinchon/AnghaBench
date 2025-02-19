
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct essiv_tfm_ctx {struct crypto_shash* hash; struct crypto_shash* essiv_cipher; } ;
struct essiv_instance_ctx {int shash_driver_name; int essiv_cipher_name; } ;
struct crypto_shash {int dummy; } ;
typedef struct crypto_shash crypto_cipher ;


 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 struct crypto_shash* crypto_alloc_cipher (int ,int ,int ) ;
 struct crypto_shash* crypto_alloc_shash (int ,int ,int ) ;
 int crypto_free_cipher (struct crypto_shash*) ;

__attribute__((used)) static int essiv_init_tfm(struct essiv_instance_ctx *ictx,
     struct essiv_tfm_ctx *tctx)
{
 struct crypto_cipher *essiv_cipher;
 struct crypto_shash *hash;
 int err;

 essiv_cipher = crypto_alloc_cipher(ictx->essiv_cipher_name, 0, 0);
 if (IS_ERR(essiv_cipher))
  return PTR_ERR(essiv_cipher);

 hash = crypto_alloc_shash(ictx->shash_driver_name, 0, 0);
 if (IS_ERR(hash)) {
  err = PTR_ERR(hash);
  goto err_free_essiv_cipher;
 }

 tctx->essiv_cipher = essiv_cipher;
 tctx->hash = hash;

 return 0;

err_free_essiv_cipher:
 crypto_free_cipher(essiv_cipher);
 return err;
}
