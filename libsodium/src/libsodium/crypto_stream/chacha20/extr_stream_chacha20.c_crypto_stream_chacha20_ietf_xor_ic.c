
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int crypto_stream_chacha20_ietf_ext_xor_ic (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,scalar_t__,unsigned char const*) ;
 int sodium_misuse () ;

int
crypto_stream_chacha20_ietf_xor_ic(unsigned char *c, const unsigned char *m,
                                   unsigned long long mlen,
                                   const unsigned char *n, uint32_t ic,
                                   const unsigned char *k)
{
    if ((unsigned long long) ic >
        (64ULL * (1ULL << 32)) / 64ULL - (mlen + 63ULL) / 64ULL) {
        sodium_misuse();
    }
    return crypto_stream_chacha20_ietf_ext_xor_ic(c, m, mlen, n, ic, k);
}
