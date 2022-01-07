
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_secretbox_xsalsa20poly1305 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char const*) ;

int
crypto_box_curve25519xsalsa20poly1305_afternm(unsigned char *c,
                                              const unsigned char *m,
                                              unsigned long long mlen,
                                              const unsigned char *n,
                                              const unsigned char *k)
{
    return crypto_secretbox_xsalsa20poly1305(c, m, mlen, n, k);
}
