
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int ProcessList ;
typedef int LinuxProcessList ;


 int LinuxProcessList_recurseProcTree (int *,int ,int *,double,struct timeval) ;
 double LinuxProcessList_scanCPUTime (int *) ;
 int LinuxProcessList_scanMemoryInfo (int *) ;
 int PROCDIR ;
 int gettimeofday (struct timeval*,int *) ;

void ProcessList_goThroughEntries(ProcessList* super) {
   LinuxProcessList* this = (LinuxProcessList*) super;

   LinuxProcessList_scanMemoryInfo(super);
   double period = LinuxProcessList_scanCPUTime(this);

   struct timeval tv;
   gettimeofday(&tv, ((void*)0));
   LinuxProcessList_recurseProcTree(this, PROCDIR, ((void*)0), period, tv);
}
