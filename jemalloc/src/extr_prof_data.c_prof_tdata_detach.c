
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_5__ {int attached; int lock; } ;
typedef TYPE_1__ prof_tdata_t ;


 int malloc_mutex_lock (int ,int ) ;
 int malloc_mutex_unlock (int ,int ) ;
 int prof_tdata_destroy (int *,TYPE_1__*,int) ;
 int prof_tdata_should_destroy (int ,TYPE_1__*,int) ;
 int tsd_prof_tdata_set (int *,int *) ;
 int tsd_tsdn (int *) ;

void
prof_tdata_detach(tsd_t *tsd, prof_tdata_t *tdata) {
 bool destroy_tdata;

 malloc_mutex_lock(tsd_tsdn(tsd), tdata->lock);
 if (tdata->attached) {
  destroy_tdata = prof_tdata_should_destroy(tsd_tsdn(tsd), tdata,
      1);




  if (!destroy_tdata) {
   tdata->attached = 0;
  }
  tsd_prof_tdata_set(tsd, ((void*)0));
 } else {
  destroy_tdata = 0;
 }
 malloc_mutex_unlock(tsd_tsdn(tsd), tdata->lock);
 if (destroy_tdata) {
  prof_tdata_destroy(tsd, tdata, 1);
 }
}
