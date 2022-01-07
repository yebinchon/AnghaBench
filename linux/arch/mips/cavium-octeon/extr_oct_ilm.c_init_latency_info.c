
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct latency_info {int io_interval; int cpu_interval; scalar_t__ interrupt_cnt; scalar_t__ latency_sum; scalar_t__ min_latency; scalar_t__ max_latency; scalar_t__ timer_start2; scalar_t__ timer_start1; } ;


 int octeon_get_clock_rate () ;
 int octeon_get_io_clock_rate () ;

__attribute__((used)) static void init_latency_info(struct latency_info *li, int startup)
{



 int interval = 1;

 if (startup) {



  li->io_interval = (octeon_get_io_clock_rate() * interval) / 1000;
  li->cpu_interval = (octeon_get_clock_rate() * interval) / 1000;
 }
 li->timer_start1 = 0;
 li->timer_start2 = 0;
 li->max_latency = 0;
 li->min_latency = (u64)-1;
 li->latency_sum = 0;
 li->interrupt_cnt = 0;
}
