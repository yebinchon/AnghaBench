
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int malloc_mutex_prefork (int ,int *) ;
 int tsd_nominal_tsds_lock ;
 int tsd_tsdn (int *) ;

void
tsd_prefork(tsd_t *tsd) {
 malloc_mutex_prefork(tsd_tsdn(tsd), &tsd_nominal_tsds_lock);
}
