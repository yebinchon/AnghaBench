
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;


 int crypto_cipher_encrypt_one (int ,int *,int const*) ;
 int skcipher_cipher_simple (struct crypto_skcipher*) ;

__attribute__((used)) static void crypto_cfb_encrypt_one(struct crypto_skcipher *tfm,
       const u8 *src, u8 *dst)
{
 crypto_cipher_encrypt_one(skcipher_cipher_simple(tfm), dst, src);
}
