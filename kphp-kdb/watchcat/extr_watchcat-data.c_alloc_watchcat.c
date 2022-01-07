
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * query; } ;
typedef TYPE_1__ watchcat ;


 TYPE_1__* dl_malloc (int) ;
 int get_watchcat_size_d () ;
 int watchcats_cnt ;
 int watchcats_memory ;

inline watchcat *alloc_watchcat() {
  int mem = get_watchcat_size_d();
  watchcats_cnt++;
  watchcats_memory += mem;

  watchcat *res = dl_malloc (mem);
  res->query = ((void*)0);
  return res;
}
