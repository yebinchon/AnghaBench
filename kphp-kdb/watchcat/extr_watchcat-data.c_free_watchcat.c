
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * query; } ;
typedef TYPE_1__ watchcat ;


 int dl_free (TYPE_1__*,int) ;
 int free_watchcat_query (int *) ;
 int get_watchcat_size_d () ;
 int watchcats_cnt ;
 int watchcats_memory ;

inline void free_watchcat (watchcat *w) {
  int mem = get_watchcat_size_d();
  watchcats_cnt--;
  watchcats_memory -= mem;

  if (w->query != ((void*)0)) {
    free_watchcat_query (w->query);
    w->query = ((void*)0);
  }
  dl_free (w, mem);
}
