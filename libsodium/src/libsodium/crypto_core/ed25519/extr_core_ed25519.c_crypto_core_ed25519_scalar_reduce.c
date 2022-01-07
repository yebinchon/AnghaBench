
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_core_ed25519_NONREDUCEDSCALARBYTES ;
 int crypto_core_ed25519_SCALARBYTES ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int sc25519_reduce (unsigned char*) ;
 int sodium_memzero (unsigned char*,int) ;

void
crypto_core_ed25519_scalar_reduce(unsigned char *r,
                                  const unsigned char *s)
{
    unsigned char t[crypto_core_ed25519_NONREDUCEDSCALARBYTES];

    memcpy(t, s, sizeof t);
    sc25519_reduce(t);
    memcpy(r, t, crypto_core_ed25519_SCALARBYTES);
    sodium_memzero(t, sizeof t);
}
