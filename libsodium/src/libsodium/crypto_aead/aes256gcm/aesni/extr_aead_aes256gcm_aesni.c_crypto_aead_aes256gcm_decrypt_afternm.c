
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_aead_aes256gcm_state ;


 int ENOSYS ;
 int errno ;

int
crypto_aead_aes256gcm_decrypt_afternm(unsigned char *m, unsigned long long *mlen_p,
                                      unsigned char *nsec,
                                      const unsigned char *c, unsigned long long clen,
                                      const unsigned char *ad, unsigned long long adlen,
                                      const unsigned char *npub,
                                      const crypto_aead_aes256gcm_state *ctx_)
{
    errno = ENOSYS;
    return -1;
}
