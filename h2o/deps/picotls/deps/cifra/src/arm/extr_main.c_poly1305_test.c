
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_poly1305 ;
typedef int cf_aes_context ;


 int cf_aes_encrypt (int *,int *,int *) ;
 int cf_aes_init (int *,int *,int) ;
 int cf_poly1305_finish (int *,int *) ;
 int cf_poly1305_init (int *,int *,int *) ;
 int cf_poly1305_update (int *,int ,int ) ;
 int mac_message ;
 int mac_message_len ;

__attribute__((used)) static void poly1305_test(void)
{
  uint8_t key[32] = { 0 },
          nonce[16] = { 0 },
          encnonce[16],
          mac[16];

  cf_aes_context aes;
  cf_aes_init(&aes, key, 16);
  cf_aes_encrypt(&aes, nonce, encnonce);

  cf_poly1305 poly;
  cf_poly1305_init(&poly, key + 16, encnonce);
  cf_poly1305_update(&poly, mac_message, mac_message_len);
  cf_poly1305_finish(&poly, mac);
}
