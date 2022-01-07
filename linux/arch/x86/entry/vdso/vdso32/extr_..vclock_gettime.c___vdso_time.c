
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int __cvdso_time (int *) ;

time_t __vdso_time(time_t *t)
{
 return __cvdso_time(t);
}
