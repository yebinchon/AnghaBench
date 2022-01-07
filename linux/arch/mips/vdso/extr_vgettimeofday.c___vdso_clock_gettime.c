
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kernel_timespec {int dummy; } ;
typedef int clockid_t ;


 int __cvdso_clock_gettime (int ,struct __kernel_timespec*) ;

int __vdso_clock_gettime(clockid_t clock,
    struct __kernel_timespec *ts)
{
 return __cvdso_clock_gettime(clock, ts);
}
