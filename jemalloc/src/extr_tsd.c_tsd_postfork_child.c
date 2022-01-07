
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int malloc_mutex_postfork_child (int ,int *) ;
 int ql_new (int *) ;
 int tsd_add_nominal (int *) ;
 int tsd_nominal_tsds ;
 int tsd_nominal_tsds_lock ;
 scalar_t__ tsd_state_get (int *) ;
 scalar_t__ tsd_state_nominal_max ;
 int tsd_tsdn (int *) ;

void
tsd_postfork_child(tsd_t *tsd) {
 malloc_mutex_postfork_child(tsd_tsdn(tsd), &tsd_nominal_tsds_lock);
 ql_new(&tsd_nominal_tsds);

 if (tsd_state_get(tsd) <= tsd_state_nominal_max) {
  tsd_add_nominal(tsd);
 }
}
