
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int errno ;

int
crypto_aead_aes256gcm_encrypt_detached(unsigned char *c,
                                       unsigned char *mac,
                                       unsigned long long *maclen_p,
                                       const unsigned char *m,
                                       unsigned long long mlen,
                                       const unsigned char *ad,
                                       unsigned long long adlen,
                                       const unsigned char *nsec,
                                       const unsigned char *npub,
                                       const unsigned char *k)
{
    errno = ENOSYS;
    return -1;
}
