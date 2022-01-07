
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int ctl_named_node_t ;


 scalar_t__ ctl_arenas_i_verify (size_t) ;
 int ctl_mtx ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int * super_experimental_arenas_i_node ;

__attribute__((used)) static const ctl_named_node_t *
experimental_arenas_i_index(tsdn_t *tsdn, const size_t *mib,
    size_t miblen, size_t i) {
 const ctl_named_node_t *ret;

 malloc_mutex_lock(tsdn, &ctl_mtx);
 if (ctl_arenas_i_verify(i)) {
  ret = ((void*)0);
  goto label_return;
 }
 ret = super_experimental_arenas_i_node;
label_return:
 malloc_mutex_unlock(tsdn, &ctl_mtx);
 return ret;
}
