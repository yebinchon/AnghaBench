
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {double userPercent; double nicePercent; double systemPercent; double irqPercent; double systemAllPercent; double idlePercent; } ;
struct TYPE_6__ {unsigned long* cp_time_n; unsigned long* cp_times_n; unsigned long* cp_time_o; unsigned long* cp_times_o; TYPE_3__* cpus; } ;
struct TYPE_5__ {int cpuCount; } ;
typedef TYPE_1__ ProcessList ;
typedef TYPE_2__ DragonFlyBSDProcessList ;
typedef TYPE_3__ CPUData ;


 int CPUSTATES ;
 size_t CP_IDLE ;
 size_t CP_INTR ;
 size_t CP_NICE ;
 size_t CP_SYS ;
 size_t CP_USER ;
 int MIB_kern_cp_time ;
 int MIB_kern_cp_times ;
 int assert (int) ;
 int sysctl (int ,int,unsigned long*,size_t*,int *,int ) ;

__attribute__((used)) static inline void DragonFlyBSDProcessList_scanCPUTime(ProcessList* pl) {
   const DragonFlyBSDProcessList* dfpl = (DragonFlyBSDProcessList*) pl;

   int cpus = pl->cpuCount;
   int maxcpu = cpus;
   int cp_times_offset;

   assert(cpus > 0);

   size_t sizeof_cp_time_array;

   unsigned long *cp_time_n;
   unsigned long *cp_time_o;

   unsigned long cp_time_d[CPUSTATES];
   double cp_time_p[CPUSTATES];


   sizeof_cp_time_array = sizeof(unsigned long) * CPUSTATES;
   sysctl(MIB_kern_cp_time, 2, dfpl->cp_time_n, &sizeof_cp_time_array, ((void*)0), 0);


   if (cpus > 1) {



       maxcpu = cpus + 1;
       sizeof_cp_time_array = cpus * sizeof(unsigned long) * CPUSTATES;
       sysctl(MIB_kern_cp_times, 2, dfpl->cp_times_n, &sizeof_cp_time_array, ((void*)0), 0);
   }

   for (int i = 0; i < maxcpu; i++) {
      if (cpus == 1) {

         cp_time_n = dfpl->cp_time_n;
         cp_time_o = dfpl->cp_time_o;
      } else {
         if (i == 0 ) {

           cp_time_n = dfpl->cp_time_n;
           cp_time_o = dfpl->cp_time_o;
         } else {

           cp_times_offset = i - 1;
           cp_time_n = dfpl->cp_times_n + (cp_times_offset * CPUSTATES);
           cp_time_o = dfpl->cp_times_o + (cp_times_offset * CPUSTATES);
         }
      }


      unsigned long long total_o = 0;
      unsigned long long total_n = 0;
      unsigned long long total_d = 0;
      for (int s = 0; s < CPUSTATES; s++) {
        cp_time_d[s] = cp_time_n[s] - cp_time_o[s];
        total_o += cp_time_o[s];
        total_n += cp_time_n[s];
      }


      total_d = total_n - total_o;
      if (total_d < 1 ) total_d = 1;


      for (int s = 0; s < CPUSTATES; ++s) {
        cp_time_o[s] = cp_time_n[s];
        cp_time_p[s] = ((double)cp_time_d[s]) / ((double)total_d) * 100;
      }

      CPUData* cpuData = &(dfpl->cpus[i]);
      cpuData->userPercent = cp_time_p[CP_USER];
      cpuData->nicePercent = cp_time_p[CP_NICE];
      cpuData->systemPercent = cp_time_p[CP_SYS];
      cpuData->irqPercent = cp_time_p[CP_INTR];
      cpuData->systemAllPercent = cp_time_p[CP_SYS] + cp_time_p[CP_INTR];

      cpuData->idlePercent = cp_time_p[CP_IDLE];
   }
}
