
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_TFM_NEED_KEY ;
 int ENOKEY ;
 int crypto_skcipher_get_flags (struct crypto_skcipher*) ;
 int skcipher_accept_parent_nokey (void*,struct sock*) ;

__attribute__((used)) static int skcipher_accept_parent(void *private, struct sock *sk)
{
 struct crypto_skcipher *tfm = private;

 if (crypto_skcipher_get_flags(tfm) & CRYPTO_TFM_NEED_KEY)
  return -ENOKEY;

 return skcipher_accept_parent_nokey(private, sk);
}
