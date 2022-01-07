
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct old_timespec32 {int dummy; } ;
typedef int clockid_t ;


 int EFAULT ;
 scalar_t__ TASK_SIZE_32 ;
 int __cvdso_clock_getres_time32 (int ,struct old_timespec32*) ;

int __vdso_clock_getres(clockid_t clock_id,
   struct old_timespec32 *res)
{

 if ((u32)res >= TASK_SIZE_32)
  return -EFAULT;

 return __cvdso_clock_getres_time32(clock_id, res);
}
