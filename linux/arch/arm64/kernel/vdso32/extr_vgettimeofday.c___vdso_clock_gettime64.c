
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct __kernel_timespec {int dummy; } ;
typedef int clockid_t ;


 int EFAULT ;
 scalar_t__ TASK_SIZE_32 ;
 int __cvdso_clock_gettime (int ,struct __kernel_timespec*) ;

int __vdso_clock_gettime64(clockid_t clock,
      struct __kernel_timespec *ts)
{

 if ((u32)ts >= TASK_SIZE_32)
  return -EFAULT;

 return __cvdso_clock_gettime(clock, ts);
}
