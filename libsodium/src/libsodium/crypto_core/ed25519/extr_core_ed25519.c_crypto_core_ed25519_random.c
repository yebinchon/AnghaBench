
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_core_ed25519_HASHBYTES ;
 int crypto_core_ed25519_from_hash (unsigned char*,unsigned char*) ;
 int randombytes_buf (unsigned char*,int) ;

void
crypto_core_ed25519_random(unsigned char *p)
{
    unsigned char h[crypto_core_ed25519_HASHBYTES];

    randombytes_buf(h, sizeof h);
    (void) crypto_core_ed25519_from_hash(p, h);
}
