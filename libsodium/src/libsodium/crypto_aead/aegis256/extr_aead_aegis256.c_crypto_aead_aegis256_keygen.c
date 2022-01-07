
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_aead_aegis256_KEYBYTES ;
 int randombytes_buf (unsigned char*,int ) ;

void
crypto_aead_aegis256_keygen(unsigned char k[crypto_aead_aegis256_KEYBYTES])
{
    randombytes_buf(k, crypto_aead_aegis256_KEYBYTES);
}
