
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kernelThreads; } ;
typedef TYPE_1__ ProcessList ;


 int PR_WALK_LWP ;
 int SolarisProcessList_scanCPUTime (TYPE_1__*) ;
 int SolarisProcessList_scanMemoryInfo (TYPE_1__*) ;
 int SolarisProcessList_walkproc ;
 int proc_walk (int *,TYPE_1__*,int ) ;

void ProcessList_goThroughEntries(ProcessList* this) {
   SolarisProcessList_scanCPUTime(this);
   SolarisProcessList_scanMemoryInfo(this);
   this->kernelThreads = 1;
   proc_walk(&SolarisProcessList_walkproc, this, PR_WALK_LWP);
}
