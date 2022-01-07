
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mce_cpu_restart ;
 int mce_timer_delete_all () ;
 int on_each_cpu (int ,int *,int) ;

__attribute__((used)) static void mce_restart(void)
{
 mce_timer_delete_all();
 on_each_cpu(mce_cpu_restart, ((void*)0), 1);
}
