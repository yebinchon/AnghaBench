
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long crypto_stream_chacha20_ietf_MESSAGEBYTES_MAX ;
 int crypto_stream_chacha20_ietf_ext (unsigned char*,unsigned long long,unsigned char const*,unsigned char const*) ;
 int sodium_misuse () ;

int
crypto_stream_chacha20_ietf(unsigned char *c, unsigned long long clen,
                            const unsigned char *n, const unsigned char *k)
{
    if (clen > crypto_stream_chacha20_ietf_MESSAGEBYTES_MAX) {
        sodium_misuse();
    }
    return crypto_stream_chacha20_ietf_ext(c, clen, n, k);
}
