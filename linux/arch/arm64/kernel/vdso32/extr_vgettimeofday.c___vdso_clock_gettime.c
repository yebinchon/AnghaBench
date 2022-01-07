
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct old_timespec32 {int dummy; } ;
typedef int clockid_t ;


 int EFAULT ;
 scalar_t__ TASK_SIZE_32 ;
 int __cvdso_clock_gettime32 (int ,struct old_timespec32*) ;

int __vdso_clock_gettime(clockid_t clock,
    struct old_timespec32 *ts)
{

 if ((u32)ts >= TASK_SIZE_32)
  return -EFAULT;

 return __cvdso_clock_gettime32(clock, ts);
}
