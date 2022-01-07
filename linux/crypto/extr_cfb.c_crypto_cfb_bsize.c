
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_skcipher {int dummy; } ;


 unsigned int crypto_cipher_blocksize (int ) ;
 int skcipher_cipher_simple (struct crypto_skcipher*) ;

__attribute__((used)) static unsigned int crypto_cfb_bsize(struct crypto_skcipher *tfm)
{
 return crypto_cipher_blocksize(skcipher_cipher_simple(tfm));
}
