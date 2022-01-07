
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int cf_hmac_ctx ;
typedef int cf_chash ;


 int assert (int const*) ;
 int cf_hmac_finish (int *,int const*) ;
 int cf_hmac_init (int *,int const*,int const*,size_t) ;
 int cf_hmac_update (int *,int const*,size_t) ;

void cf_hmac(const uint8_t *key, size_t nkey,
             const uint8_t *msg, size_t nmsg,
             uint8_t *out,
             const cf_chash *hash)
{
  cf_hmac_ctx ctx;

  assert(out);
  assert(hash);

  cf_hmac_init(&ctx, hash, key, nkey);
  cf_hmac_update(&ctx, msg, nmsg);
  cf_hmac_finish(&ctx, out);
}
