
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_core_ed25519_scalar_reduce (unsigned char*,unsigned char const*) ;

void
crypto_core_ristretto255_scalar_reduce(unsigned char *r,
                                       const unsigned char *s)
{
    crypto_core_ed25519_scalar_reduce(r, s);
}
