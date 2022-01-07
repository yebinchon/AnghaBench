
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hub_data {int slice_map; } ;
typedef int cnodeid_t ;


 int IP27_HUB_PEND0_IRQ ;
 int IP27_HUB_PEND1_IRQ ;
 int IRQ_TYPE_NONE ;
 int LOCAL_HUB_L (int ) ;
 int PI_CPU_NUM ;
 int ST0_IM ;
 int clear_c0_status (int ) ;
 int cpu_time_init () ;
 int cputoslice (int) ;
 int enable_percpu_irq (int ,int ) ;
 int get_compact_nodeid () ;
 struct hub_data* hub_data (int ) ;
 int install_cpu_nmi_handler (int ) ;
 int install_ipi () ;
 int per_hub_init (int ) ;
 int smp_processor_id () ;
 scalar_t__ test_and_set_bit (int,int *) ;

void per_cpu_init(void)
{
 int cpu = smp_processor_id();
 int slice = LOCAL_HUB_L(PI_CPU_NUM);
 cnodeid_t cnode = get_compact_nodeid();
 struct hub_data *hub = hub_data(cnode);

 if (test_and_set_bit(slice, &hub->slice_map))
  return;

 clear_c0_status(ST0_IM);

 per_hub_init(cnode);

 cpu_time_init();
 install_ipi();


 install_cpu_nmi_handler(cputoslice(cpu));

 enable_percpu_irq(IP27_HUB_PEND0_IRQ, IRQ_TYPE_NONE);
 enable_percpu_irq(IP27_HUB_PEND1_IRQ, IRQ_TYPE_NONE);
}
