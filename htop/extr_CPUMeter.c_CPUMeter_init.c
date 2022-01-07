
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int caption ;
struct TYPE_6__ {int param; TYPE_1__* pl; } ;
struct TYPE_5__ {int cpuCount; int settings; } ;
typedef TYPE_2__ Meter ;


 int Meter_setCaption (TYPE_2__*,char*) ;
 int Settings_cpuId (int ,int) ;
 int xSnprintf (char*,int,char*,int ) ;

__attribute__((used)) static void CPUMeter_init(Meter* this) {
   int cpu = this->param;
   if (this->pl->cpuCount > 1) {
      char caption[10];
      xSnprintf(caption, sizeof(caption), "%-3d", Settings_cpuId(this->pl->settings, cpu - 1));
      Meter_setCaption(this, caption);
   }
   if (this->param == 0)
      Meter_setCaption(this, "Avg");
}
