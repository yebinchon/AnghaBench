
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xen_init_lock_cpu (unsigned int) ;

__attribute__((used)) static int xen_cpu_up_online(unsigned int cpu)
{
 xen_init_lock_cpu(cpu);
 return 0;
}
