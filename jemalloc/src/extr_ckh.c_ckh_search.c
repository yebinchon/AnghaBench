
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* tab; } ;
typedef TYPE_2__ ckh_t ;
struct TYPE_5__ {scalar_t__ data; scalar_t__ key; } ;


 size_t SIZE_T_MAX ;
 int assert (int ) ;
 size_t ckh_isearch (TYPE_2__*,void const*) ;

bool
ckh_search(ckh_t *ckh, const void *searchkey, void **key, void **data) {
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
  return 0;
 }

 return 1;
}
