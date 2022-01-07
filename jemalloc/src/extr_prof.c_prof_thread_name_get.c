
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_3__ {char const* thread_name; } ;
typedef TYPE_1__ prof_tdata_t ;


 int assert (int) ;
 TYPE_1__* prof_tdata_get (int *,int) ;
 scalar_t__ tsd_reentrancy_level_get (int *) ;

const char *
prof_thread_name_get(tsd_t *tsd) {
 assert(tsd_reentrancy_level_get(tsd) == 0);

 prof_tdata_t *tdata;

 tdata = prof_tdata_get(tsd, 1);
 if (tdata == ((void*)0)) {
  return "";
 }
 return (tdata->thread_name != ((void*)0) ? tdata->thread_name : "");
}
