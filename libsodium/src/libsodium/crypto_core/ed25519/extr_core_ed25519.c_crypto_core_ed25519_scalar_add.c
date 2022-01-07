
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_core_ed25519_NONREDUCEDSCALARBYTES ;
 int crypto_core_ed25519_SCALARBYTES ;
 int crypto_core_ed25519_scalar_reduce (unsigned char*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char const*,int ) ;
 int memset (unsigned char*,int ,int) ;
 int sodium_add (unsigned char*,unsigned char*,int ) ;

void
crypto_core_ed25519_scalar_add(unsigned char *z, const unsigned char *x,
                               const unsigned char *y)
{
    unsigned char x_[crypto_core_ed25519_NONREDUCEDSCALARBYTES];
    unsigned char y_[crypto_core_ed25519_NONREDUCEDSCALARBYTES];

    memset(x_, 0, sizeof x_);
    memset(y_, 0, sizeof y_);
    memcpy(x_, x, crypto_core_ed25519_SCALARBYTES);
    memcpy(y_, y, crypto_core_ed25519_SCALARBYTES);
    sodium_add(x_, y_, crypto_core_ed25519_SCALARBYTES);
    crypto_core_ed25519_scalar_reduce(z, x_);
}
