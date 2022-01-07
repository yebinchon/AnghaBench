
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int shift; int xtime_nsec; int cycle_last; int mult; int mask; } ;
struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct timekeeper {TYPE_2__ tkr_mono; int xtime_sec; TYPE_1__ wall_to_monotonic; } ;
struct TYPE_8__ {int cs_shift; int xtime_clock_nsec; int xtime_coarse_nsec; int hrtimer_res; int xtime_coarse_sec; int xtime_clock_sec; int wtm_clock_nsec; int wtm_clock_sec; int cs_cycle_last; int cs_mult; int cs_mask; } ;


 int hrtimer_resolution ;
 TYPE_3__* vdso_data ;
 int vdso_write_begin (TYPE_3__*) ;
 int vdso_write_end (TYPE_3__*) ;

void update_vsyscall(struct timekeeper *tk)
{
 vdso_write_begin(vdso_data);
 vdso_data->cs_mask = tk->tkr_mono.mask;
 vdso_data->cs_mult = tk->tkr_mono.mult;
 vdso_data->cs_shift = tk->tkr_mono.shift;
 vdso_data->cs_cycle_last = tk->tkr_mono.cycle_last;
 vdso_data->wtm_clock_sec = tk->wall_to_monotonic.tv_sec;
 vdso_data->wtm_clock_nsec = tk->wall_to_monotonic.tv_nsec;
 vdso_data->xtime_clock_sec = tk->xtime_sec;
 vdso_data->xtime_clock_nsec = tk->tkr_mono.xtime_nsec;
 vdso_data->xtime_coarse_sec = tk->xtime_sec;
 vdso_data->xtime_coarse_nsec = tk->tkr_mono.xtime_nsec >>
     tk->tkr_mono.shift;
 vdso_data->hrtimer_res = hrtimer_resolution;
 vdso_write_end(vdso_data);
}
