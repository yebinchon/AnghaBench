
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int reseed_counter; int C; int V; } ;
typedef TYPE_1__ cf_hash_drbg_sha256 ;


 int cf_sha256 ;
 int hash_df (int *,int*,int,int ,int,void const*,size_t,void const*,size_t,int ,int) ;
 int memcpy (int ,int ,int) ;

void cf_hash_drbg_sha256_reseed(cf_hash_drbg_sha256 *ctx,
                                const void *entropy, size_t nentropy,
                                const void *addnl, size_t naddnl)
{



  uint8_t one = 1;

  memcpy(ctx->C, ctx->V, sizeof ctx->C);
  hash_df(&cf_sha256,
          &one, sizeof one,
          ctx->C, sizeof ctx->C,
          entropy, nentropy,
          addnl, naddnl,
          ctx->V, sizeof ctx->V);


  uint8_t zero = 0;
  hash_df(&cf_sha256,
          &zero, sizeof zero,
          ctx->V, sizeof ctx->V,
          ((void*)0), 0,
          ((void*)0), 0,
          ctx->C, sizeof ctx->C);


  ctx->reseed_counter = 1;
}
