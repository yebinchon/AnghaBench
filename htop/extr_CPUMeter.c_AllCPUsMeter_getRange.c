
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pl; } ;
struct TYPE_5__ {int cpuCount; } ;
typedef TYPE_2__ Meter ;


 int* Meter_name (TYPE_2__*) ;

__attribute__((used)) static void AllCPUsMeter_getRange(Meter* this, int* start, int* count) {
   int cpus = this->pl->cpuCount;
   switch(Meter_name(this)[0]) {
      default:
      case 'A':
         *start = 0;
         *count = cpus;
         break;
      case 'L':
         *start = 0;
         *count = (cpus+1) / 2;
         break;
      case 'R':
         *start = (cpus+1) / 2;
         *count = cpus / 2;
         break;
   }
}
