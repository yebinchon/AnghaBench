
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_perf_event {int cntr_mask; int event_id; scalar_t__ range; } ;


 int num_possible_cpus () ;

__attribute__((used)) static unsigned int mipspmu_perf_event_encode(const struct mips_perf_event *pev)
{
  return ((pev->cntr_mask & 0xffff00) |
   (pev->event_id & 0xff));
}
