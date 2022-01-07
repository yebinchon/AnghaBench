
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;
struct __kernel_old_timeval {int dummy; } ;


 int __cvdso_gettimeofday (struct __kernel_old_timeval*,struct timezone*) ;

int __kernel_gettimeofday(struct __kernel_old_timeval *tv,
     struct timezone *tz)
{
 return __cvdso_gettimeofday(tv, tz);
}
