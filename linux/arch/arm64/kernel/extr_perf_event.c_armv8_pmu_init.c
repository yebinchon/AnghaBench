
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_pmu {int filter_match; int set_event_filter; int reset; int stop; int start; int clear_event_idx; int get_event_idx; int write_counter; int read_counter; int disable; int enable; int handle_irq; } ;


 int armv8pmu_clear_event_idx ;
 int armv8pmu_disable_event ;
 int armv8pmu_enable_event ;
 int armv8pmu_filter_match ;
 int armv8pmu_get_event_idx ;
 int armv8pmu_handle_irq ;
 int armv8pmu_probe_pmu (struct arm_pmu*) ;
 int armv8pmu_read_counter ;
 int armv8pmu_reset ;
 int armv8pmu_set_event_filter ;
 int armv8pmu_start ;
 int armv8pmu_stop ;
 int armv8pmu_write_counter ;

__attribute__((used)) static int armv8_pmu_init(struct arm_pmu *cpu_pmu)
{
 int ret = armv8pmu_probe_pmu(cpu_pmu);
 if (ret)
  return ret;

 cpu_pmu->handle_irq = armv8pmu_handle_irq;
 cpu_pmu->enable = armv8pmu_enable_event;
 cpu_pmu->disable = armv8pmu_disable_event;
 cpu_pmu->read_counter = armv8pmu_read_counter;
 cpu_pmu->write_counter = armv8pmu_write_counter;
 cpu_pmu->get_event_idx = armv8pmu_get_event_idx;
 cpu_pmu->clear_event_idx = armv8pmu_clear_event_idx;
 cpu_pmu->start = armv8pmu_start;
 cpu_pmu->stop = armv8pmu_stop;
 cpu_pmu->reset = armv8pmu_reset;
 cpu_pmu->set_event_filter = armv8pmu_set_event_filter;
 cpu_pmu->filter_match = armv8pmu_filter_match;

 return 0;
}
