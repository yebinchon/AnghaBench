
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_2__ {int tsd_link; } ;


 TYPE_1__ TSD_MANGLE (int ) ;
 int assert (int) ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int ql_remove (int *,int *,int ) ;
 int tcache ;
 int tsd_in_nominal_list (int *) ;
 int tsd_nominal_tsds ;
 int tsd_nominal_tsds_lock ;
 scalar_t__ tsd_state_get (int *) ;
 scalar_t__ tsd_state_nominal_max ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
tsd_remove_nominal(tsd_t *tsd) {
 assert(tsd_in_nominal_list(tsd));
 assert(tsd_state_get(tsd) <= tsd_state_nominal_max);
 malloc_mutex_lock(tsd_tsdn(tsd), &tsd_nominal_tsds_lock);
 ql_remove(&tsd_nominal_tsds, tsd, TSD_MANGLE(tcache).tsd_link);
 malloc_mutex_unlock(tsd_tsdn(tsd), &tsd_nominal_tsds_lock);
}
