
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int ctl_named_node_t ;
struct TYPE_2__ {size_t narenas; } ;




 TYPE_1__* ctl_arenas ;
 int ctl_mtx ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int * super_arena_i_node ;

__attribute__((used)) static const ctl_named_node_t *
arena_i_index(tsdn_t *tsdn, const size_t *mib, size_t miblen,
    size_t i) {
 const ctl_named_node_t *ret;

 malloc_mutex_lock(tsdn, &ctl_mtx);
 switch (i) {
 case 129:
 case 128:
  break;
 default:
  if (i > ctl_arenas->narenas) {
   ret = ((void*)0);
   goto label_return;
  }
  break;
 }

 ret = super_arena_i_node;
label_return:
 malloc_mutex_unlock(tsdn, &ctl_mtx);
 return ret;
}
