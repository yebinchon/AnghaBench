
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CIF_DEDICATED_CPU ;
 int clear_cpu_flag (int ) ;
 int set_cpu_flag (int ) ;
 int smp_processor_id () ;
 scalar_t__ topology_cpu_dedicated (int ) ;

__attribute__((used)) static void __arch_update_dedicated_flag(void *arg)
{
 if (topology_cpu_dedicated(smp_processor_id()))
  set_cpu_flag(CIF_DEDICATED_CPU);
 else
  clear_cpu_flag(CIF_DEDICATED_CPU);
}
