
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int param; int values; TYPE_1__* pl; } ;
struct TYPE_5__ {int cpuCount; } ;
typedef TYPE_2__ Meter ;


 int CPU_METER_ITEMCOUNT ;
 double Platform_setCPUValues (TYPE_2__*,int) ;
 int memset (int ,int ,int) ;
 int xSnprintf (char*,int,char*,...) ;

__attribute__((used)) static void CPUMeter_updateValues(Meter* this, char* buffer, int size) {
   int cpu = this->param;
   if (cpu > this->pl->cpuCount) {
      xSnprintf(buffer, size, "absent");
      return;
   }
   memset(this->values, 0, sizeof(double) * CPU_METER_ITEMCOUNT);
   double percent = Platform_setCPUValues(this, cpu);
   xSnprintf(buffer, size, "%5.1f%%", percent);
}
