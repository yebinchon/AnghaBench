
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kd; struct TYPE_3__* cpus; } ;
typedef TYPE_1__ SolarisProcessList ;
typedef int ProcessList ;


 int ProcessList_done (int *) ;
 int free (TYPE_1__*) ;
 int kstat_close (scalar_t__) ;

void ProcessList_delete(ProcessList* pl) {
   SolarisProcessList* spl = (SolarisProcessList*) pl;
   ProcessList_done(pl);
   free(spl->cpus);
   if (spl->kd) kstat_close(spl->kd);
   free(spl);
}
