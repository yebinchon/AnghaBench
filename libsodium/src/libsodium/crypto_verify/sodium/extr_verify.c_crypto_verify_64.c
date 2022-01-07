
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_verify_64_BYTES ;
 int crypto_verify_n (unsigned char const*,unsigned char const*,int ) ;

int
crypto_verify_64(const unsigned char *x, const unsigned char *y)
{
    return crypto_verify_n(x, y, crypto_verify_64_BYTES);
}
