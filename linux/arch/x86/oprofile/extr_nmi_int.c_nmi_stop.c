
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ctr_running ;
 int get_online_cpus () ;
 int nmi_cpu_stop ;
 int on_each_cpu (int ,int *,int) ;
 int put_online_cpus () ;

__attribute__((used)) static void nmi_stop(void)
{
 get_online_cpus();
 on_each_cpu(nmi_cpu_stop, ((void*)0), 1);
 ctr_running = 0;
 put_online_cpus();
}
