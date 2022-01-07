
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_kdf_KEYBYTES ;
 int randombytes_buf (unsigned char*,int ) ;

void
crypto_kdf_keygen(unsigned char k[crypto_kdf_KEYBYTES])
{
    randombytes_buf(k, crypto_kdf_KEYBYTES);
}
