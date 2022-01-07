
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int cf_chash_ctx ;
struct TYPE_3__ {int hashsz; int (* digest ) (int *,int const*) ;int (* update ) (int *,int const*,size_t) ;int (* init ) (int *) ;} ;
typedef TYPE_1__ cf_chash ;


 int CF_MAXHASH ;
 int add (int const*,size_t,int const*,int) ;
 int stub1 (int *) ;
 int stub2 (int *,int const*,int) ;
 int stub3 (int *,int const*,size_t) ;
 int stub4 (int *,int const*) ;
 int write32_be (scalar_t__,int const*) ;

__attribute__((used)) static void hash_step(const cf_chash *H,
                      uint8_t *V, size_t nV,
                      const uint8_t *C, size_t nC,
                      uint32_t *reseed_counter)
{

  uint8_t h[CF_MAXHASH];
  uint8_t three = 3;
  cf_chash_ctx ctx;

  H->init(&ctx);
  H->update(&ctx, &three, sizeof three);
  H->update(&ctx, V, nV);
  H->digest(&ctx, h);


  uint8_t reseed_counter_buf[4];
  write32_be(*reseed_counter, reseed_counter_buf);

  add(V, nV, h, H->hashsz);
  add(V, nV, C, nC);
  add(V, nV, reseed_counter_buf, sizeof reseed_counter_buf);


  *reseed_counter = *reseed_counter + 1;
}
