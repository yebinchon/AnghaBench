
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_onetimeauth_poly1305 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*) ;

int
crypto_onetimeauth(unsigned char *out, const unsigned char *in,
                   unsigned long long inlen, const unsigned char *k)
{
    return crypto_onetimeauth_poly1305(out, in, inlen, k);
}
