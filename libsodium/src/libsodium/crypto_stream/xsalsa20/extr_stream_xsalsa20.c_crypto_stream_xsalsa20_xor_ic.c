
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int crypto_core_hsalsa20 (unsigned char*,unsigned char const*,unsigned char const*,int *) ;
 int crypto_stream_salsa20_xor_ic (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,int ,unsigned char*) ;
 int sodium_memzero (unsigned char*,int) ;

int
crypto_stream_xsalsa20_xor_ic(unsigned char *c, const unsigned char *m,
                              unsigned long long mlen, const unsigned char *n,
                              uint64_t ic, const unsigned char *k)
{
    unsigned char subkey[32];
    int ret;

    crypto_core_hsalsa20(subkey, n, k, ((void*)0));
    ret = crypto_stream_salsa20_xor_ic(c, m, mlen, n + 16, ic, subkey);
    sodium_memzero(subkey, sizeof subkey);

    return ret;
}
