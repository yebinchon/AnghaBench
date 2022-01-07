
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ge25519_from_hash (unsigned char*,unsigned char const*) ;

int
crypto_core_ed25519_from_hash(unsigned char *p, const unsigned char *h)
{
    ge25519_from_hash(p, h);

    return 0;
}
