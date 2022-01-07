
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uid_t ;
typedef int UsersTable ;
struct TYPE_7__ {int cpuCount; } ;
struct TYPE_6__ {void* cpus; int kd; } ;
typedef TYPE_1__ SolarisProcessList ;
typedef TYPE_2__ ProcessList ;
typedef int Hashtable ;
typedef int CPUData ;


 int Class (int ) ;
 int ProcessList_init (TYPE_2__*,int ,int *,int *,int ) ;
 int SolarisProcess ;
 int _SC_NPROCESSORS_ONLN ;
 int kstat_open () ;
 int sysconf (int ) ;
 TYPE_1__* xCalloc (int,int) ;
 void* xRealloc (void*,int) ;

ProcessList* ProcessList_new(UsersTable* usersTable, Hashtable* pidWhiteList, uid_t userId) {
   SolarisProcessList* spl = xCalloc(1, sizeof(SolarisProcessList));
   ProcessList* pl = (ProcessList*) spl;
   ProcessList_init(pl, Class(SolarisProcess), usersTable, pidWhiteList, userId);

   spl->kd = kstat_open();

   pl->cpuCount = sysconf(_SC_NPROCESSORS_ONLN);

   if (pl->cpuCount == 1 ) {
      spl->cpus = xRealloc(spl->cpus, sizeof(CPUData));
   } else {
      spl->cpus = xRealloc(spl->cpus, (pl->cpuCount + 1) * sizeof(CPUData));
   }

   return pl;
}
