
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_auth_hmacsha512256_verify (unsigned char const*,unsigned char const*,unsigned long long,unsigned char const*) ;

int
crypto_auth_verify(const unsigned char *h, const unsigned char *in,
                   unsigned long long inlen,const unsigned char *k)
{
    return crypto_auth_hmacsha512256_verify(h, in, inlen, k);
}
