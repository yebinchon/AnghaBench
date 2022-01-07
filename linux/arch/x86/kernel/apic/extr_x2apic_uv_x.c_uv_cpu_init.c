
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pnode; int nr_online_cpus; } ;


 scalar_t__ UV_NON_UNIQUE_APIC ;
 scalar_t__ get_uv_system_type () ;
 int set_x2apic_extra_bits (int ) ;
 scalar_t__ smp_processor_id () ;
 TYPE_1__* uv_hub_info ;

void uv_cpu_init(void)
{

 if (smp_processor_id() == 0)
  return;

 uv_hub_info->nr_online_cpus++;

 if (get_uv_system_type() == UV_NON_UNIQUE_APIC)
  set_x2apic_extra_bits(uv_hub_info->pnode);
}
