
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct cipher_alg {int (* cia_decrypt ) (struct crypto_tfm*,int *,int const*) ;} ;
struct TYPE_2__ {struct cipher_alg cra_cipher; } ;


 int cipher_crypt_unaligned (int (*) (struct crypto_tfm*,int *,int const*),struct crypto_tfm*,int *,int const*) ;
 unsigned long crypto_tfm_alg_alignmask (struct crypto_tfm*) ;
 int stub1 (struct crypto_tfm*,int *,int const*) ;
 scalar_t__ unlikely (unsigned long) ;

__attribute__((used)) static void cipher_decrypt_unaligned(struct crypto_tfm *tfm,
         u8 *dst, const u8 *src)
{
 unsigned long alignmask = crypto_tfm_alg_alignmask(tfm);
 struct cipher_alg *cipher = &tfm->__crt_alg->cra_cipher;

 if (unlikely(((unsigned long)dst | (unsigned long)src) & alignmask)) {
  cipher_crypt_unaligned(cipher->cia_decrypt, tfm, dst, src);
  return;
 }

 cipher->cia_decrypt(tfm, dst, src);
}
