
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int cf_chash_ctx ;
struct TYPE_3__ {int hashsz; int (* digest ) (int *,int*) ;int (* update ) (int *,void const*,size_t) ;int (* init ) (int *) ;} ;
typedef TYPE_1__ cf_chash ;


 int CF_MAXHASH ;
 int add (int*,size_t,int*,int ) ;
 int stub1 (int *) ;
 int stub2 (int *,int*,int) ;
 int stub3 (int *,int*,size_t) ;
 int stub4 (int *,void const*,size_t) ;
 int stub5 (int *,int*) ;

__attribute__((used)) static void hash_process_addnl(const cf_chash *H,
                               const void *input, size_t ninput,
                               uint8_t *V, size_t nV)
{
  if (!ninput)
    return;


  uint8_t two = 2;
  uint8_t w[CF_MAXHASH];
  cf_chash_ctx ctx;
  H->init(&ctx);
  H->update(&ctx, &two, sizeof two);
  H->update(&ctx, V, nV);
  H->update(&ctx, input, ninput);
  H->digest(&ctx, w);


  add(V, nV, w, H->hashsz);
}
