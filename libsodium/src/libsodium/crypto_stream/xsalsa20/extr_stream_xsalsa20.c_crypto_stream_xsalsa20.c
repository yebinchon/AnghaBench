
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_core_hsalsa20 (unsigned char*,unsigned char const*,unsigned char const*,int *) ;
 int crypto_stream_salsa20 (unsigned char*,unsigned long long,unsigned char const*,unsigned char*) ;
 int sodium_memzero (unsigned char*,int) ;

int
crypto_stream_xsalsa20(unsigned char *c, unsigned long long clen,
                       const unsigned char *n, const unsigned char *k)
{
    unsigned char subkey[32];
    int ret;

    crypto_core_hsalsa20(subkey, n, k, ((void*)0));
    ret = crypto_stream_salsa20(c, clen, n + 16, subkey);
    sodium_memzero(subkey, sizeof subkey);

    return ret;
}
