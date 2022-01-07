
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct aead_tfm {int aead; } ;


 int CRYPTO_TFM_NEED_KEY ;
 int ENOKEY ;
 int aead_accept_parent_nokey (void*,struct sock*) ;
 int crypto_aead_get_flags (int ) ;

__attribute__((used)) static int aead_accept_parent(void *private, struct sock *sk)
{
 struct aead_tfm *tfm = private;

 if (crypto_aead_get_flags(tfm->aead) & CRYPTO_TFM_NEED_KEY)
  return -ENOKEY;

 return aead_accept_parent_nokey(private, sk);
}
