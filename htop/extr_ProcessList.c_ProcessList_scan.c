
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int updated; int show; } ;
struct TYPE_7__ {int processes; scalar_t__ runningTasks; scalar_t__ kernelThreads; scalar_t__ userlandThreads; scalar_t__ totalTasks; } ;
typedef TYPE_1__ ProcessList ;
typedef TYPE_2__ Process ;


 int ProcessList_goThroughEntries (TYPE_1__*) ;
 int ProcessList_remove (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ Vector_get (int ,int) ;
 int Vector_size (int ) ;

void ProcessList_scan(ProcessList* this) {


   for (int i = 0; i < Vector_size(this->processes); i++) {
      Process* p = (Process*) Vector_get(this->processes, i);
      p->updated = 0;
      p->show = 1;
   }

   this->totalTasks = 0;
   this->userlandThreads = 0;
   this->kernelThreads = 0;
   this->runningTasks = 0;

   ProcessList_goThroughEntries(this);

   for (int i = Vector_size(this->processes) - 1; i >= 0; i--) {
      Process* p = (Process*) Vector_get(this->processes, i);
      if (p->updated == 0)
         ProcessList_remove(this, p);
      else
         p->updated = 0;
   }
}
