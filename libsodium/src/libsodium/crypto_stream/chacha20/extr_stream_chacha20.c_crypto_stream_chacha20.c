
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* stream ) (unsigned char*,unsigned long long,unsigned char const*,unsigned char const*) ;} ;


 unsigned long long crypto_stream_chacha20_MESSAGEBYTES_MAX ;
 TYPE_1__* implementation ;
 int sodium_misuse () ;
 int stub1 (unsigned char*,unsigned long long,unsigned char const*,unsigned char const*) ;

int
crypto_stream_chacha20(unsigned char *c, unsigned long long clen,
                       const unsigned char *n, const unsigned char *k)
{
    if (clen > crypto_stream_chacha20_MESSAGEBYTES_MAX) {
        sodium_misuse();
    }
    return implementation->stream(c, clen, n, k);
}
