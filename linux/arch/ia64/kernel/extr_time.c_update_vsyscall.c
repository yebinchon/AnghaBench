
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_12__ {int shift; int xtime_nsec; int cycle_last; TYPE_2__* clock; int mult; int mask; } ;
struct TYPE_11__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct timekeeper {TYPE_5__ tkr_mono; TYPE_4__ wall_to_monotonic; scalar_t__ xtime_sec; } ;
struct TYPE_13__ {int snsec; scalar_t__ sec; } ;
struct TYPE_10__ {int snsec; scalar_t__ sec; } ;
struct TYPE_14__ {int clk_shift; int seq; TYPE_6__ monotonic_time; TYPE_3__ wall_time; int clk_cycle_last; int clk_fsys_mmio; int clk_mult; int clk_mask; } ;
struct TYPE_8__ {int fsys_mmio; } ;
struct TYPE_9__ {TYPE_1__ archdata; } ;


 scalar_t__ NSEC_PER_SEC ;
 TYPE_7__ fsyscall_gtod_data ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

void update_vsyscall(struct timekeeper *tk)
{
 write_seqcount_begin(&fsyscall_gtod_data.seq);


 fsyscall_gtod_data.clk_mask = tk->tkr_mono.mask;
 fsyscall_gtod_data.clk_mult = tk->tkr_mono.mult;
 fsyscall_gtod_data.clk_shift = tk->tkr_mono.shift;
 fsyscall_gtod_data.clk_fsys_mmio = tk->tkr_mono.clock->archdata.fsys_mmio;
 fsyscall_gtod_data.clk_cycle_last = tk->tkr_mono.cycle_last;

 fsyscall_gtod_data.wall_time.sec = tk->xtime_sec;
 fsyscall_gtod_data.wall_time.snsec = tk->tkr_mono.xtime_nsec;

 fsyscall_gtod_data.monotonic_time.sec = tk->xtime_sec
           + tk->wall_to_monotonic.tv_sec;
 fsyscall_gtod_data.monotonic_time.snsec = tk->tkr_mono.xtime_nsec
      + ((u64)tk->wall_to_monotonic.tv_nsec
       << tk->tkr_mono.shift);


 while (fsyscall_gtod_data.monotonic_time.snsec >=
     (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift)) {
  fsyscall_gtod_data.monotonic_time.snsec -=
     ((u64)NSEC_PER_SEC) << tk->tkr_mono.shift;
  fsyscall_gtod_data.monotonic_time.sec++;
 }

 write_seqcount_end(&fsyscall_gtod_data.seq);
}
