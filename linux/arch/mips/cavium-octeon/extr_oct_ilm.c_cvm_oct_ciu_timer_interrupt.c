
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int irqreturn_t ;
struct TYPE_3__ {scalar_t__ timer_start1; scalar_t__ cpu_interval; scalar_t__ max_latency; scalar_t__ min_latency; int io_interval; int latency_sum; int interrupt_cnt; } ;


 int IRQ_HANDLED ;
 int TIMER_NUM ;
 int init_latency_info (TYPE_1__*,int ) ;
 TYPE_1__ li ;
 scalar_t__ read_c0_cvmcount () ;
 int reset_stats ;
 int start_timer (int ,int ) ;

__attribute__((used)) static irqreturn_t cvm_oct_ciu_timer_interrupt(int cpl, void *dev_id)
{
 u64 last_latency;
 u64 last_int_cnt;

 if (reset_stats) {
  init_latency_info(&li, 0);
  reset_stats = 0;
 } else {
  last_int_cnt = read_c0_cvmcount();
  last_latency = last_int_cnt - (li.timer_start1 + li.cpu_interval);
  li.interrupt_cnt++;
  li.latency_sum += last_latency;
  if (last_latency > li.max_latency)
   li.max_latency = last_latency;
  if (last_latency < li.min_latency)
   li.min_latency = last_latency;
 }
 start_timer(TIMER_NUM, li.io_interval);
 return IRQ_HANDLED;
}
