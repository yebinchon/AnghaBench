
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_sign_ed25519_SEEDBYTES ;
 int memmove (unsigned char*,unsigned char const*,int ) ;

int
crypto_sign_ed25519_sk_to_seed(unsigned char *seed, const unsigned char *sk)
{
    memmove(seed, sk, crypto_sign_ed25519_SEEDBYTES);

    return 0;
}
