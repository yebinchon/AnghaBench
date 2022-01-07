
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_sign_ed25519_BYTES ;
 scalar_t__ crypto_sign_ed25519_detached (unsigned char*,unsigned long long*,unsigned char*,unsigned long long,unsigned char const*) ;
 int memmove (unsigned char*,unsigned char const*,unsigned long long) ;
 int memset (unsigned char*,int ,unsigned long long) ;

int
crypto_sign_ed25519(unsigned char *sm, unsigned long long *smlen_p,
                    const unsigned char *m, unsigned long long mlen,
                    const unsigned char *sk)
{
    unsigned long long siglen;

    memmove(sm + crypto_sign_ed25519_BYTES, m, mlen);

    if (crypto_sign_ed25519_detached(
            sm, &siglen, sm + crypto_sign_ed25519_BYTES, mlen, sk) != 0 ||
        siglen != crypto_sign_ed25519_BYTES) {
        if (smlen_p != ((void*)0)) {
            *smlen_p = 0;
        }
        memset(sm, 0, mlen + crypto_sign_ed25519_BYTES);
        return -1;
    }


    if (smlen_p != ((void*)0)) {
        *smlen_p = mlen + siglen;
    }
    return 0;
}
