
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* values; scalar_t__ total; TYPE_2__* pl; } ;
struct TYPE_6__ {scalar_t__ kernelThreads; scalar_t__ userlandThreads; scalar_t__ totalTasks; TYPE_1__* settings; int cpuCount; int runningTasks; } ;
struct TYPE_5__ {scalar_t__ hideKernelThreads; } ;
typedef TYPE_2__ ProcessList ;
typedef TYPE_3__ Meter ;


 scalar_t__ MIN (int ,int ) ;
 int xSnprintf (char*,int,char*,int,int) ;

__attribute__((used)) static void TasksMeter_updateValues(Meter* this, char* buffer, int len) {
   ProcessList* pl = this->pl;
   this->values[0] = pl->kernelThreads;
   this->values[1] = pl->userlandThreads;
   this->values[2] = pl->totalTasks - pl->kernelThreads - pl->userlandThreads;
   this->values[3] = MIN(pl->runningTasks, pl->cpuCount);
   if (pl->totalTasks > this->total) {
      this->total = pl->totalTasks;
   }
   if (this->pl->settings->hideKernelThreads) {
      this->values[0] = 0;
   }
   xSnprintf(buffer, len, "%d/%d", (int) this->values[3], (int) this->total);
}
