
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_aead_aes256gcm_state ;


 int ENOSYS ;
 int errno ;

int
crypto_aead_aes256gcm_beforenm(crypto_aead_aes256gcm_state *ctx_,
                               const unsigned char *k)
{
    errno = ENOSYS;
    return -1;
}
