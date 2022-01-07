
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int const uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_7__ {TYPE_1__* hash; } ;
typedef TYPE_2__ cf_hmac_ctx ;
struct TYPE_6__ {size_t hashsz; } ;


 int CF_MAXHASH ;
 int cf_hmac_finish (TYPE_2__*,int const*) ;
 int cf_hmac_update (TYPE_2__*,int const*,size_t) ;
 int memcpy (int const*,int const*,size_t) ;
 int write32_be (scalar_t__,int const*) ;
 int xor_bb (int const*,int const*,int const*,size_t) ;

__attribute__((used)) static void F(const cf_hmac_ctx *startctx,
              uint32_t counter,
              const uint8_t *salt, size_t nsalt,
              uint32_t iterations,
              uint8_t *out)
{
  uint8_t U[CF_MAXHASH];
  size_t hashsz = startctx->hash->hashsz;

  uint8_t countbuf[4];
  write32_be(counter, countbuf);




  cf_hmac_ctx ctx = *startctx;
  cf_hmac_update(&ctx, salt, nsalt);
  cf_hmac_update(&ctx, countbuf, sizeof countbuf);
  cf_hmac_finish(&ctx, U);
  memcpy(out, U, hashsz);




  for (uint32_t i = 1; i < iterations; i++)
  {
    ctx = *startctx;
    cf_hmac_update(&ctx, U, hashsz);
    cf_hmac_finish(&ctx, U);
    xor_bb(out, out, U, hashsz);
  }
}
