
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int dummy; } ;


 int CRT_fatalError (char*) ;
 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_ALL ;
 scalar_t__ sysctl (int*,int,struct kinfo_proc*,size_t*,int *,int ) ;
 struct kinfo_proc* xMalloc (size_t) ;

struct kinfo_proc *ProcessList_getKInfoProcs(size_t *count) {
   int mib[4] = { CTL_KERN, KERN_PROC, KERN_PROC_ALL, 0 };
   struct kinfo_proc *processes = ((void*)0);





   *count = 0;
   if (sysctl(mib, 4, ((void*)0), count, ((void*)0), 0) < 0)
      CRT_fatalError("Unable to get size of kproc_infos");

   processes = xMalloc(*count);
   if (processes == ((void*)0))
      CRT_fatalError("Out of memory for kproc_infos");

   if (sysctl(mib, 4, processes, count, ((void*)0), 0) < 0)
      CRT_fatalError("Unable to get kinfo_procs");

   *count = *count / sizeof(struct kinfo_proc);

   return processes;
}
