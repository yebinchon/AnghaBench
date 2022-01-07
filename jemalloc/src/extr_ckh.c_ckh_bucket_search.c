
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * key; } ;
typedef TYPE_1__ ckhc_t ;
struct TYPE_5__ {scalar_t__ (* keycomp ) (void const*,int *) ;TYPE_1__* tab; } ;
typedef TYPE_2__ ckh_t ;


 unsigned int LG_CKH_BUCKET_CELLS ;
 size_t SIZE_T_MAX ;
 unsigned int ZU (int) ;
 scalar_t__ stub1 (void const*,int *) ;

__attribute__((used)) static size_t
ckh_bucket_search(ckh_t *ckh, size_t bucket, const void *key) {
 ckhc_t *cell;
 unsigned i;

 for (i = 0; i < (ZU(1) << LG_CKH_BUCKET_CELLS); i++) {
  cell = &ckh->tab[(bucket << LG_CKH_BUCKET_CELLS) + i];
  if (cell->key != ((void*)0) && ckh->keycomp(key, cell->key)) {
   return (bucket << LG_CKH_BUCKET_CELLS) + i;
  }
 }

 return SIZE_T_MAX;
}
