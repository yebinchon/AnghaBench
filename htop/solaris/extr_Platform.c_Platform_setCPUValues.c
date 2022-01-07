
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {double nicePercent; double userPercent; double systemPercent; double irqPercent; double systemAllPercent; } ;
struct TYPE_11__ {double* values; TYPE_2__* pl; } ;
struct TYPE_10__ {TYPE_5__* cpus; } ;
struct TYPE_9__ {int cpuCount; TYPE_1__* settings; } ;
struct TYPE_8__ {scalar_t__ detailedCPUTime; } ;
typedef TYPE_3__ SolarisProcessList ;
typedef TYPE_4__ Meter ;
typedef TYPE_5__ CPUData ;


 double CLAMP (double,double,double) ;
 size_t CPU_METER_IRQ ;
 size_t CPU_METER_KERNEL ;
 size_t CPU_METER_NICE ;
 size_t CPU_METER_NORMAL ;
 int Meter_setItems (TYPE_4__*,int) ;
 scalar_t__ isnan (double) ;

double Platform_setCPUValues(Meter* this, int cpu) {
   SolarisProcessList* spl = (SolarisProcessList*) this->pl;
   int cpus = this->pl->cpuCount;
   CPUData* cpuData = ((void*)0);

   if (cpus == 1) {

     cpuData = &(spl->cpus[0]);
   } else {
     cpuData = &(spl->cpus[cpu]);
   }

   double percent;
   double* v = this->values;

   v[CPU_METER_NICE] = cpuData->nicePercent;
   v[CPU_METER_NORMAL] = cpuData->userPercent;
   if (this->pl->settings->detailedCPUTime) {
      v[CPU_METER_KERNEL] = cpuData->systemPercent;
      v[CPU_METER_IRQ] = cpuData->irqPercent;
      Meter_setItems(this, 4);
      percent = v[0]+v[1]+v[2]+v[3];
   } else {
      v[2] = cpuData->systemAllPercent;
      Meter_setItems(this, 3);
      percent = v[0]+v[1]+v[2];
   }

   percent = CLAMP(percent, 0.0, 100.0);
   if (isnan(percent)) percent = 0.0;
   return percent;
}
