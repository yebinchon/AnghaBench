
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t crypto_core_ed25519_HASHBYTES ;

size_t
crypto_core_ed25519_hashbytes(void)
{
    return crypto_core_ed25519_HASHBYTES;
}
