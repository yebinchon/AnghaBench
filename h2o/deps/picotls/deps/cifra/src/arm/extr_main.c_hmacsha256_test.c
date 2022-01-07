
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_hmac_ctx ;


 int cf_hmac_finish (int *,int *) ;
 int cf_hmac_init (int *,int *,int *,int) ;
 int cf_hmac_update (int *,int ,int ) ;
 int cf_sha256 ;
 int mac_message ;
 int mac_message_len ;

__attribute__((used)) static void hmacsha256_test(void)
{
  uint8_t key[32] = { 0 },
          mac[32] = { 0 };

  cf_hmac_ctx ctx;
  cf_hmac_init(&ctx, &cf_sha256, key, sizeof key);
  cf_hmac_update(&ctx, mac_message, mac_message_len);
  cf_hmac_finish(&ctx, mac);
}
