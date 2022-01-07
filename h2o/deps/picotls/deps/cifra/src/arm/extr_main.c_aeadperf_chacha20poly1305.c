
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aead_aad ;
 int aead_cipher ;
 int aead_key ;
 int aead_msg ;
 int aead_nonce ;
 int aead_tag ;
 int bracket ;
 int cf_chacha20poly1305_encrypt (int ,int ,int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static void aeadperf_chacha20poly1305(void)
{
  cf_chacha20poly1305_encrypt(aead_key, aead_nonce,
                              aead_aad, sizeof aead_aad,
                              aead_msg, bracket,
                              aead_cipher, aead_tag);
}
