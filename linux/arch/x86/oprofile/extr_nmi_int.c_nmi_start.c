
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctr_running ;
 int get_online_cpus () ;
 int nmi_cpu_start ;
 int on_each_cpu (int ,int *,int) ;
 int put_online_cpus () ;
 int smp_mb () ;

__attribute__((used)) static int nmi_start(void)
{
 get_online_cpus();
 ctr_running = 1;

 smp_mb();
 on_each_cpu(nmi_cpu_start, ((void*)0), 1);
 put_online_cpus();
 return 0;
}
