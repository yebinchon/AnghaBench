
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nds32_pmu {int max_period; int reset; int stop; int start; int get_event_idx; int write_counter; int read_counter; int disable; int enable; int handle_irq; } ;


 int nds32_pmu_disable_event ;
 int nds32_pmu_enable_event ;
 int nds32_pmu_get_event_idx ;
 int nds32_pmu_handle_irq ;
 int nds32_pmu_read_counter ;
 int nds32_pmu_reset ;
 int nds32_pmu_start ;
 int nds32_pmu_stop ;
 int nds32_pmu_write_counter ;

__attribute__((used)) static void nds32_pmu_init(struct nds32_pmu *cpu_pmu)
{
 cpu_pmu->handle_irq = nds32_pmu_handle_irq;
 cpu_pmu->enable = nds32_pmu_enable_event;
 cpu_pmu->disable = nds32_pmu_disable_event;
 cpu_pmu->read_counter = nds32_pmu_read_counter;
 cpu_pmu->write_counter = nds32_pmu_write_counter;
 cpu_pmu->get_event_idx = nds32_pmu_get_event_idx;
 cpu_pmu->start = nds32_pmu_start;
 cpu_pmu->stop = nds32_pmu_stop;
 cpu_pmu->reset = nds32_pmu_reset;
 cpu_pmu->max_period = 0xFFFFFFFF;
}
