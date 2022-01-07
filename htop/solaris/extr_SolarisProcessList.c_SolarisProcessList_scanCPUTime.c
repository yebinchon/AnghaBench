
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef double uint64_t ;
typedef int kstat_t ;
struct TYPE_8__ {double ui64; } ;
struct TYPE_9__ {TYPE_1__ value; } ;
typedef TYPE_2__ kstat_named_t ;
struct TYPE_12__ {double lidle; double lintr; double lkrnl; double luser; double userPercent; double nicePercent; double systemPercent; double irqPercent; double systemAllPercent; double idlePercent; } ;
struct TYPE_11__ {int cpuCount; } ;
struct TYPE_10__ {TYPE_5__* cpus; int * kd; } ;
typedef TYPE_3__ SolarisProcessList ;
typedef TYPE_4__ ProcessList ;
typedef TYPE_5__ CPUData ;


 int assert (int) ;
 TYPE_2__* kstat_data_lookup (int *,char*) ;
 int * kstat_lookup (int *,char*,int,char*) ;
 int kstat_read (int *,int *,int *) ;

__attribute__((used)) static inline void SolarisProcessList_scanCPUTime(ProcessList* pl) {
   const SolarisProcessList* spl = (SolarisProcessList*) pl;
   int cpus = pl->cpuCount;
   kstat_t *cpuinfo = ((void*)0);
   int kchain = 0;
   kstat_named_t *idletime = ((void*)0);
   kstat_named_t *intrtime = ((void*)0);
   kstat_named_t *krnltime = ((void*)0);
   kstat_named_t *usertime = ((void*)0);
   double idlebuf = 0;
   double intrbuf = 0;
   double krnlbuf = 0;
   double userbuf = 0;
   uint64_t totaltime = 0;
   int arrskip = 0;

   assert(cpus > 0);

   if (cpus > 1) {


       arrskip++;
   }


   for (int i = 0; i < cpus; i++) {
      if (spl->kd != ((void*)0)) { cpuinfo = kstat_lookup(spl->kd,"cpu",i,"sys"); }
      if (cpuinfo != ((void*)0)) { kchain = kstat_read(spl->kd,cpuinfo,((void*)0)); }
      if (kchain != -1 ) {
         idletime = kstat_data_lookup(cpuinfo,"cpu_nsec_idle");
         intrtime = kstat_data_lookup(cpuinfo,"cpu_nsec_intr");
         krnltime = kstat_data_lookup(cpuinfo,"cpu_nsec_kernel");
         usertime = kstat_data_lookup(cpuinfo,"cpu_nsec_user");
      }

      assert( (idletime != ((void*)0)) && (intrtime != ((void*)0))
           && (krnltime != ((void*)0)) && (usertime != ((void*)0)) );

      CPUData* cpuData = &(spl->cpus[i+arrskip]);
      totaltime = (idletime->value.ui64 - cpuData->lidle)
                + (intrtime->value.ui64 - cpuData->lintr)
                + (krnltime->value.ui64 - cpuData->lkrnl)
                + (usertime->value.ui64 - cpuData->luser);

      cpuData->userPercent = ((usertime->value.ui64 - cpuData->luser) / (double)totaltime) * 100.0;
      cpuData->nicePercent = (double)0.0;
      cpuData->systemPercent = ((krnltime->value.ui64 - cpuData->lkrnl) / (double)totaltime) * 100.0;
      cpuData->irqPercent = ((intrtime->value.ui64 - cpuData->lintr) / (double)totaltime) * 100.0;
      cpuData->systemAllPercent = cpuData->systemPercent + cpuData->irqPercent;
      cpuData->idlePercent = ((idletime->value.ui64 - cpuData->lidle) / (double)totaltime) * 100.0;

      cpuData->luser = usertime->value.ui64;
      cpuData->lkrnl = krnltime->value.ui64;
      cpuData->lintr = intrtime->value.ui64;
      cpuData->lidle = idletime->value.ui64;

      if (cpus > 1) {
         userbuf += cpuData->userPercent;
         krnlbuf += cpuData->systemPercent;
         intrbuf += cpuData->irqPercent;
         idlebuf += cpuData->idlePercent;
      }
   }

   if (cpus > 1) {
      CPUData* cpuData = &(spl->cpus[0]);
      cpuData->userPercent = userbuf / cpus;
      cpuData->nicePercent = (double)0.0;
      cpuData->systemPercent = krnlbuf / cpus;
      cpuData->irqPercent = intrbuf / cpus;
      cpuData->systemAllPercent = cpuData->systemPercent + cpuData->irqPercent;
      cpuData->idlePercent = idlebuf / cpus;
   }
}
