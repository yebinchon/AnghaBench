
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sc25519_mul (unsigned char*,unsigned char const*,unsigned char const*) ;

void
crypto_core_ed25519_scalar_mul(unsigned char *z, const unsigned char *x,
                               const unsigned char *y)
{
    sc25519_mul(z, x, y);
}
