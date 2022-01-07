
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 int ctl_mtx ;
 int malloc_mutex_assert_owner (int *,int *) ;

void
ctl_mtx_assert_held(tsdn_t *tsdn) {
 malloc_mutex_assert_owner(tsdn, &ctl_mtx);
}
