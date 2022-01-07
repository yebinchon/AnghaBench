
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
typedef scalar_t__ cycles_t ;


 unsigned long long clocksource_cyc2ns (scalar_t__,int ,int ) ;
 scalar_t__ cycles ;
 int persistent_mult ;
 int persistent_shift ;
 struct timespec64 persistent_ts ;
 scalar_t__ readl_relaxed (scalar_t__) ;
 scalar_t__ sync32k_cnt_reg ;
 int timespec64_add_ns (struct timespec64*,unsigned long long) ;

__attribute__((used)) static void omap_read_persistent_clock64(struct timespec64 *ts)
{
 unsigned long long nsecs;
 cycles_t last_cycles;

 last_cycles = cycles;
 cycles = sync32k_cnt_reg ? readl_relaxed(sync32k_cnt_reg) : 0;

 nsecs = clocksource_cyc2ns(cycles - last_cycles,
     persistent_mult, persistent_shift);

 timespec64_add_ns(&persistent_ts, nsecs);

 *ts = persistent_ts;
}
