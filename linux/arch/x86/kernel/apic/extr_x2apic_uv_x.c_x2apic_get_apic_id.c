
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 unsigned long __this_cpu_read (int ) ;
 int num_online_cpus () ;
 scalar_t__ preemptible () ;
 int x2apic_extra_bits ;

__attribute__((used)) static unsigned int x2apic_get_apic_id(unsigned long x)
{
 unsigned int id;

 WARN_ON(preemptible() && num_online_cpus() > 1);
 id = x | __this_cpu_read(x2apic_extra_bits);

 return id;
}
