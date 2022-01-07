
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kernel_timespec {int dummy; } ;
typedef int clockid_t ;


 int __cvdso_clock_getres (int ,struct __kernel_timespec*) ;

int __kernel_clock_getres(clockid_t clock_id,
     struct __kernel_timespec *res)
{
 return __cvdso_clock_getres(clock_id, res);
}
