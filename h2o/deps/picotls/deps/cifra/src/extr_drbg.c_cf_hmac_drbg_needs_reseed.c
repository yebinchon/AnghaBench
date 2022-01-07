
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ reseed_counter; } ;
typedef TYPE_1__ cf_hmac_drbg ;



uint32_t cf_hmac_drbg_needs_reseed(const cf_hmac_drbg *ctx)
{
  return ctx->reseed_counter == 0;
}
