
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMPILER_ASSERT (int) ;
 int crypto_box_curve25519xchacha20poly1305_BEFORENMBYTES ;
 scalar_t__ crypto_box_curve25519xchacha20poly1305_beforenm (unsigned char*,unsigned char const*,unsigned char const*) ;
 int crypto_box_curve25519xchacha20poly1305_detached_afternm (unsigned char*,unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char*) ;
 int crypto_secretbox_xchacha20poly1305_KEYBYTES ;
 int sodium_memzero (unsigned char*,int) ;

int
crypto_box_curve25519xchacha20poly1305_detached(
    unsigned char *c, unsigned char *mac, const unsigned char *m,
    unsigned long long mlen, const unsigned char *n, const unsigned char *pk,
    const unsigned char *sk)
{
    unsigned char k[crypto_box_curve25519xchacha20poly1305_BEFORENMBYTES];
    int ret;

    COMPILER_ASSERT(crypto_box_curve25519xchacha20poly1305_BEFORENMBYTES >=
                    crypto_secretbox_xchacha20poly1305_KEYBYTES);
    if (crypto_box_curve25519xchacha20poly1305_beforenm(k, pk, sk) != 0) {
        return -1;
    }
    ret = crypto_box_curve25519xchacha20poly1305_detached_afternm(c, mac, m,
                                                                  mlen, n, k);
    sodium_memzero(k, sizeof k);

    return ret;
}
