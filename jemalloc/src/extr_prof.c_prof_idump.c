
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int tsd_t ;
struct TYPE_3__ {int enq_idump; scalar_t__ enq; } ;
typedef TYPE_1__ prof_tdata_t ;


 int PATH_MAX ;
 int cassert (int ) ;
 int config_prof ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int prof_active_get_unlocked () ;
 int prof_booted ;
 int prof_dump (int *,int,char*,int) ;
 int prof_dump_filename (int *,char*,char,int ) ;
 int prof_dump_filename_mtx ;
 int prof_dump_iseq ;
 char* prof_dump_prefix_get (int ) ;
 TYPE_1__* prof_tdata_get (int *,int) ;
 scalar_t__ tsd_reentrancy_level_get (int *) ;
 int tsd_tsdn (int *) ;
 scalar_t__ tsdn_null (int *) ;
 int * tsdn_tsd (int *) ;

void
prof_idump(tsdn_t *tsdn) {
 tsd_t *tsd;
 prof_tdata_t *tdata;

 cassert(config_prof);

 if (!prof_booted || tsdn_null(tsdn) || !prof_active_get_unlocked()) {
  return;
 }
 tsd = tsdn_tsd(tsdn);
 if (tsd_reentrancy_level_get(tsd) > 0) {
  return;
 }

 tdata = prof_tdata_get(tsd, 1);
 if (tdata == ((void*)0)) {
  return;
 }
 if (tdata->enq) {
  tdata->enq_idump = 1;
  return;
 }

 malloc_mutex_lock(tsd_tsdn(tsd), &prof_dump_filename_mtx);
 if (prof_dump_prefix_get(tsd_tsdn(tsd))[0] == '\0') {
  malloc_mutex_unlock(tsd_tsdn(tsd), &prof_dump_filename_mtx);
  return;
 }
 char filename[PATH_MAX + 1];
 prof_dump_filename(tsd, filename, 'i', prof_dump_iseq);
 prof_dump_iseq++;
 malloc_mutex_unlock(tsd_tsdn(tsd), &prof_dump_filename_mtx);
 prof_dump(tsd, 0, filename, 0);
}
