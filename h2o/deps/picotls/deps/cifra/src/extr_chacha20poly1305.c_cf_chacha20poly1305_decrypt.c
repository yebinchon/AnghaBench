
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DECRYPT ;
 int memcpy (int *,int const*,int) ;
 int process (int const*,int const*,int const*,size_t,int const*,size_t,int *,int ,int *) ;

int cf_chacha20poly1305_decrypt(const uint8_t key[32],
                                const uint8_t nonce[12],
                                const uint8_t *header, size_t nheader,
                                const uint8_t *ciphertext, size_t nbytes,
                                const uint8_t tag[16],
                                uint8_t *plaintext)
{
  uint8_t ourtag[16];
  memcpy(ourtag, tag, sizeof ourtag);

  return process(key,
                 nonce,
                 header, nheader,
                 ciphertext, nbytes,
                 plaintext,
                 DECRYPT,
                 ourtag);
}
