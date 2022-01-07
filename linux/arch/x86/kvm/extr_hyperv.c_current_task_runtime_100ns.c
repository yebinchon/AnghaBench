
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int current ;
 scalar_t__ div_u64 (scalar_t__,int) ;
 int task_cputime_adjusted (int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static u64 current_task_runtime_100ns(void)
{
 u64 utime, stime;

 task_cputime_adjusted(current, &utime, &stime);

 return div_u64(utime + stime, 100);
}
