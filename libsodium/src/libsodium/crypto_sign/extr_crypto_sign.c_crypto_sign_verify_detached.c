
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_sign_ed25519_verify_detached (unsigned char const*,unsigned char const*,unsigned long long,unsigned char const*) ;

int
crypto_sign_verify_detached(const unsigned char *sig, const unsigned char *m,
                            unsigned long long mlen, const unsigned char *pk)
{
    return crypto_sign_ed25519_verify_detached(sig, m, mlen, pk);
}
