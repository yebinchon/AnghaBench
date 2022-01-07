
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_shorthash_siphash24 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*) ;

int
crypto_shorthash(unsigned char *out, const unsigned char *in,
                 unsigned long long inlen, const unsigned char *k)
{
    return crypto_shorthash_siphash24(out, in, inlen, k);
}
