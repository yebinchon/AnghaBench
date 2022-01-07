
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int reseed_counter; int hmac; int * V; } ;
typedef TYPE_1__ cf_hmac_drbg ;
struct TYPE_9__ {int hashsz; } ;
typedef TYPE_2__ cf_chash ;


 int CF_MAXHASH ;
 int assert (int) ;
 int cf_hmac_init (int *,TYPE_2__ const*,int *,int) ;
 int hmac_drbg_update (TYPE_1__*,void const*,size_t,void const*,size_t,void const*,size_t) ;
 int mem_clean (TYPE_1__*,int) ;
 int memset (int *,int,int) ;

void cf_hmac_drbg_init(cf_hmac_drbg *ctx,
                       const cf_chash *hash,
                       const void *entropy, size_t nentropy,
                       const void *nonce, size_t nnonce,
                       const void *persn, size_t npersn)
{
  mem_clean(ctx, sizeof *ctx);

  assert(hash->hashsz <= CF_MAXHASH);



  uint8_t initial_key[CF_MAXHASH];
  memset(initial_key, 0x00, hash->hashsz);
  memset(ctx->V, 0x01, hash->hashsz);
  cf_hmac_init(&ctx->hmac, hash, initial_key, hash->hashsz);



  hmac_drbg_update(ctx, entropy, nentropy, nonce, nnonce, persn, npersn);


  ctx->reseed_counter = 1;
}
