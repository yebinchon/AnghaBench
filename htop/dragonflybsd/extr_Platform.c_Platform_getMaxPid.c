
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int maxPid ;


 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

int Platform_getMaxPid() {
   int maxPid;
   size_t size = sizeof(maxPid);
   int err = sysctlbyname("kern.pid_max", &maxPid, &size, ((void*)0), 0);
   if (err) {
      return 999999;
   }
   return maxPid;
}
