
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int cf_chash_ctx ;
struct TYPE_4__ {int (* digest ) (int *,int *) ;int (* update ) (int *,void const*,size_t) ;int (* init ) (int *) ;} ;
typedef TYPE_1__ cf_chash ;


 int assert (TYPE_1__ const*) ;
 int mem_clean (int *,int) ;
 int stub1 (int *) ;
 int stub2 (int *,void const*,size_t) ;
 int stub3 (int *,int *) ;

void cf_hash(const cf_chash *h, const void *m, size_t nm, uint8_t *out)
{
  cf_chash_ctx ctx;
  assert(h);
  h->init(&ctx);
  h->update(&ctx, m, nm);
  h->digest(&ctx, out);
  mem_clean(&ctx, sizeof ctx);
}
