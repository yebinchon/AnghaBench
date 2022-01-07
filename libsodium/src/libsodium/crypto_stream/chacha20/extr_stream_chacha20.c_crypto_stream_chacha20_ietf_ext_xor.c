
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* stream_ietf_ext_xor_ic ) (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned int,unsigned char const*) ;} ;


 unsigned long long crypto_stream_chacha20_MESSAGEBYTES_MAX ;
 TYPE_1__* implementation ;
 int sodium_misuse () ;
 int stub1 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned int,unsigned char const*) ;

__attribute__((used)) static int
crypto_stream_chacha20_ietf_ext_xor(unsigned char *c, const unsigned char *m,
                                    unsigned long long mlen, const unsigned char *n,
                                    const unsigned char *k)
{
    if (mlen > crypto_stream_chacha20_MESSAGEBYTES_MAX) {
        sodium_misuse();
    }
    return implementation->stream_ietf_ext_xor_ic(c, m, mlen, n, 0U, k);
}
