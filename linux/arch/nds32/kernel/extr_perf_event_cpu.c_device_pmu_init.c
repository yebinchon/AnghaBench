
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nds32_pmu {char* name; int set_event_filter; int num_events; int map_event; } ;


 int nds32_pmu_init (struct nds32_pmu*) ;
 int nds32_pmu_set_event_filter ;
 int nds32_read_num_pfm_events () ;
 int nds32_spav3_map_event ;

__attribute__((used)) static int device_pmu_init(struct nds32_pmu *cpu_pmu)
{
 nds32_pmu_init(cpu_pmu);




 cpu_pmu->name = "nds32v3-pmu";
 cpu_pmu->map_event = nds32_spav3_map_event;
 cpu_pmu->num_events = nds32_read_num_pfm_events();
 cpu_pmu->set_event_filter = nds32_pmu_set_event_filter;
 return 0;
}
