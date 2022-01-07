
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ reseed_counter; } ;
typedef TYPE_1__ cf_hash_drbg_sha256 ;



uint32_t cf_hash_drbg_sha256_needs_reseed(const cf_hash_drbg_sha256 *ctx)
{

  return ctx->reseed_counter == 0;
}
