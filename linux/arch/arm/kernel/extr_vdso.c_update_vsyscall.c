
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
struct TYPE_6__ {int xtime_nsec; int shift; int mask; int mult; int cycle_last; } ;
struct timekeeper {TYPE_1__ tkr_mono; int xtime_sec; struct timespec64 wall_to_monotonic; } ;
struct TYPE_7__ {int xtime_clock_snsec; int cs_shift; int cs_mask; int cs_mult; int xtime_clock_sec; int cs_cycle_last; scalar_t__ tk_is_cntvct; int wtm_clock_nsec; int wtm_clock_sec; scalar_t__ xtime_coarse_nsec; int xtime_coarse_sec; } ;


 int cntvct_ok ;
 int flush_dcache_page (int ) ;
 scalar_t__ tk_is_cntvct (struct timekeeper*) ;
 TYPE_2__* vdso_data ;
 int vdso_write_begin (TYPE_2__*) ;
 int vdso_write_end (TYPE_2__*) ;
 int virt_to_page (TYPE_2__*) ;

void update_vsyscall(struct timekeeper *tk)
{
 struct timespec64 *wtm = &tk->wall_to_monotonic;

 if (!cntvct_ok) {



  return;
 }

 vdso_write_begin(vdso_data);

 vdso_data->tk_is_cntvct = tk_is_cntvct(tk);
 vdso_data->xtime_coarse_sec = tk->xtime_sec;
 vdso_data->xtime_coarse_nsec = (u32)(tk->tkr_mono.xtime_nsec >>
       tk->tkr_mono.shift);
 vdso_data->wtm_clock_sec = wtm->tv_sec;
 vdso_data->wtm_clock_nsec = wtm->tv_nsec;

 if (vdso_data->tk_is_cntvct) {
  vdso_data->cs_cycle_last = tk->tkr_mono.cycle_last;
  vdso_data->xtime_clock_sec = tk->xtime_sec;
  vdso_data->xtime_clock_snsec = tk->tkr_mono.xtime_nsec;
  vdso_data->cs_mult = tk->tkr_mono.mult;
  vdso_data->cs_shift = tk->tkr_mono.shift;
  vdso_data->cs_mask = tk->tkr_mono.mask;
 }

 vdso_write_end(vdso_data);

 flush_dcache_page(virt_to_page(vdso_data));
}
