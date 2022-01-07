
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_sign_ed25519 (unsigned char*,unsigned long long*,unsigned char const*,unsigned long long,unsigned char const*) ;

int
crypto_sign(unsigned char *sm, unsigned long long *smlen_p,
            const unsigned char *m, unsigned long long mlen,
            const unsigned char *sk)
{
    return crypto_sign_ed25519(sm, smlen_p, m, mlen, sk);
}
