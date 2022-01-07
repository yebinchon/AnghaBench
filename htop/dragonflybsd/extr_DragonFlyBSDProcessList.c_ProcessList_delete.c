
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cpus; int * cp_times_n; int * cp_times_o; int * cp_time_n; int * cp_time_o; scalar_t__ jails; scalar_t__ kd; } ;
typedef int ProcessList ;
typedef TYPE_1__ DragonFlyBSDProcessList ;


 int Hashtable_delete (scalar_t__) ;
 int ProcessList_done (int *) ;
 int free (int *) ;
 int kvm_close (scalar_t__) ;

void ProcessList_delete(ProcessList* this) {
   const DragonFlyBSDProcessList* dfpl = (DragonFlyBSDProcessList*) this;
   if (dfpl->kd) kvm_close(dfpl->kd);

   if (dfpl->jails) {
      Hashtable_delete(dfpl->jails);
   }
   free(dfpl->cp_time_o);
   free(dfpl->cp_time_n);
   free(dfpl->cp_times_o);
   free(dfpl->cp_times_n);
   free(dfpl->cpus);

   ProcessList_done(this);
   free(this);
}
