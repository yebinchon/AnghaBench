
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_hash_sha512 (unsigned char*,unsigned char const*,unsigned long long) ;

int
crypto_hash(unsigned char *out, const unsigned char *in,
            unsigned long long inlen)
{
    return crypto_hash_sha512(out, in, inlen);
}
