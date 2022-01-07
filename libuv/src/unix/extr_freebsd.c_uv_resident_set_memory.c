
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {size_t kp_vm_rssize; size_t ki_rssize; } ;
typedef int kinfo ;


 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_PID ;
 int UV__ERR (int ) ;
 int errno ;
 size_t getpagesize () ;
 int getpid () ;
 scalar_t__ sysctl (int*,int,struct kinfo_proc*,size_t*,int *,int ) ;

int uv_resident_set_memory(size_t* rss) {
  struct kinfo_proc kinfo;
  size_t page_size;
  size_t kinfo_size;
  int mib[4];

  mib[0] = CTL_KERN;
  mib[1] = KERN_PROC;
  mib[2] = KERN_PROC_PID;
  mib[3] = getpid();

  kinfo_size = sizeof(kinfo);

  if (sysctl(mib, 4, &kinfo, &kinfo_size, ((void*)0), 0))
    return UV__ERR(errno);

  page_size = getpagesize();




  *rss = kinfo.ki_rssize * page_size;


  return 0;
}
