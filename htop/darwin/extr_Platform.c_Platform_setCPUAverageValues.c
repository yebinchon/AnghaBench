
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cpuCount; } ;
struct TYPE_8__ {TYPE_1__ super; } ;
struct TYPE_7__ {double* values; scalar_t__ pl; } ;
typedef TYPE_2__ Meter ;
typedef TYPE_3__ DarwinProcessList ;


 size_t CPU_METER_KERNEL ;
 size_t CPU_METER_NICE ;
 size_t CPU_METER_NORMAL ;
 scalar_t__ Platform_setCPUValues (TYPE_2__*,int) ;

__attribute__((used)) static double Platform_setCPUAverageValues(Meter* mtr) {
   DarwinProcessList *dpl = (DarwinProcessList *)mtr->pl;
   int cpus = dpl->super.cpuCount;
   double sumNice = 0.0;
   double sumNormal = 0.0;
   double sumKernel = 0.0;
   double sumPercent = 0.0;
   for (int i = 1; i <= cpus; i++) {
      sumPercent += Platform_setCPUValues(mtr, i);
      sumNice += mtr->values[CPU_METER_NICE];
      sumNormal += mtr->values[CPU_METER_NORMAL];
      sumKernel += mtr->values[CPU_METER_KERNEL];
   }
   mtr->values[CPU_METER_NICE] = sumNice / cpus;
   mtr->values[CPU_METER_NORMAL] = sumNormal / cpus;
   mtr->values[CPU_METER_KERNEL] = sumKernel / cpus;
   return sumPercent / cpus;
}
