
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_7__ {int count; int lg_curbuckets; int lg_minbuckets; TYPE_1__* tab; } ;
typedef TYPE_2__ ckh_t ;
struct TYPE_6__ {int * data; int * key; } ;


 int LG_CKH_BUCKET_CELLS ;
 size_t SIZE_T_MAX ;
 int ZU (int) ;
 int assert (int ) ;
 size_t ckh_isearch (TYPE_2__*,void const*) ;
 int ckh_shrink (int *,TYPE_2__*) ;

bool
ckh_remove(tsd_t *tsd, ckh_t *ckh, const void *searchkey, void **key,
    void **data) {
 size_t cell;

 assert(ckh != ((void*)0));

 cell = ckh_isearch(ckh, searchkey);
 if (cell != SIZE_T_MAX) {
  if (key != ((void*)0)) {
   *key = (void *)ckh->tab[cell].key;
  }
  if (data != ((void*)0)) {
   *data = (void *)ckh->tab[cell].data;
  }
  ckh->tab[cell].key = ((void*)0);
  ckh->tab[cell].data = ((void*)0);

  ckh->count--;

  if (ckh->count < (ZU(1) << (ckh->lg_curbuckets
      + LG_CKH_BUCKET_CELLS - 2)) && ckh->lg_curbuckets
      > ckh->lg_minbuckets) {

   ckh_shrink(tsd, ckh);
  }

  return 0;
 }

 return 1;
}
