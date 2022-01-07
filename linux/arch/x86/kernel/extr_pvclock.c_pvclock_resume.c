
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic64_set (int *,int ) ;
 int last_value ;

void pvclock_resume(void)
{
 atomic64_set(&last_value, 0);
}
