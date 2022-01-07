
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int reseed_counter; int C; int V; } ;
typedef TYPE_1__ cf_hash_drbg_sha256 ;


 int assert (int) ;
 int cf_hash_drbg_sha256_needs_reseed (TYPE_1__*) ;
 int cf_sha256 ;
 int hash_generate (int *,int *,int,void*,size_t) ;
 int hash_process_addnl (int *,void const*,size_t,int ,int) ;
 int hash_step (int *,int ,int,int ,int,int *) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void hash_gen_request(cf_hash_drbg_sha256 *ctx,
                             const void *addnl, size_t naddnl,
                             void *out, size_t nout)
{
  uint8_t data[440/8];

  assert(!cf_hash_drbg_sha256_needs_reseed(ctx));

  hash_process_addnl(&cf_sha256, addnl, naddnl, ctx->V, sizeof ctx->V);
  assert(sizeof data == sizeof ctx->V);
  memcpy(data, ctx->V, sizeof ctx->V);
  hash_generate(&cf_sha256, data, sizeof data, out, nout);
  hash_step(&cf_sha256, ctx->V, sizeof ctx->V, ctx->C, sizeof ctx->C, &ctx->reseed_counter);
}
