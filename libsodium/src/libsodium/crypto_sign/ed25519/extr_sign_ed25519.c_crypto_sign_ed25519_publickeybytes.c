
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t crypto_sign_ed25519_PUBLICKEYBYTES ;

size_t
crypto_sign_ed25519_publickeybytes(void)
{
    return crypto_sign_ed25519_PUBLICKEYBYTES;
}
