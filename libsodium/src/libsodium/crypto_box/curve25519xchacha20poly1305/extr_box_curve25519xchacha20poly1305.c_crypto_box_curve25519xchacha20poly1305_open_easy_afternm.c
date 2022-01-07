
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long crypto_box_curve25519xchacha20poly1305_MACBYTES ;
 int crypto_box_curve25519xchacha20poly1305_open_detached_afternm (unsigned char*,unsigned char const*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char const*) ;

int
crypto_box_curve25519xchacha20poly1305_open_easy_afternm(
    unsigned char *m, const unsigned char *c, unsigned long long clen,
    const unsigned char *n, const unsigned char *k)
{
    if (clen < crypto_box_curve25519xchacha20poly1305_MACBYTES) {
        return -1;
    }
    return crypto_box_curve25519xchacha20poly1305_open_detached_afternm(
        m, c + crypto_box_curve25519xchacha20poly1305_MACBYTES, c,
        clen - crypto_box_curve25519xchacha20poly1305_MACBYTES, n, k);
}
