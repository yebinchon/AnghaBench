
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
typedef int bootTime ;


 int CTL_KERN ;
 int KERN_BOOTTIME ;
 scalar_t__ difftime (int ,int ) ;
 int gettimeofday (struct timeval*,int *) ;
 int sysctl (int*,int,struct timeval*,size_t*,int *,int ) ;

int Platform_getUptime() {
   struct timeval bootTime, currTime;
   int mib[2] = { CTL_KERN, KERN_BOOTTIME };
   size_t size = sizeof(bootTime);

   int err = sysctl(mib, 2, &bootTime, &size, ((void*)0), 0);
   if (err) {
      return -1;
   }
   gettimeofday(&currTime, ((void*)0));

   return (int) difftime(currTime.tv_sec, bootTime.tv_sec);
}
