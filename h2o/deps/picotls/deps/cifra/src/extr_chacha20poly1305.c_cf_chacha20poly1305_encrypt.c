
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ENCRYPT ;
 int process (int const*,int const*,int const*,size_t,int const*,size_t,int *,int ,int *) ;

void cf_chacha20poly1305_encrypt(const uint8_t key[32],
                                 const uint8_t nonce[12],
                                 const uint8_t *header, size_t nheader,
                                 const uint8_t *plaintext, size_t nbytes,
                                 uint8_t *ciphertext,
                                 uint8_t tag[16])
{
  process(key,
          nonce,
          header, nheader,
          plaintext, nbytes,
          ciphertext,
          ENCRYPT,
          tag);
}
