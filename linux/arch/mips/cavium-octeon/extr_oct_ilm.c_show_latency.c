
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_file {int dummy; } ;
struct latency_info {int max_latency; int min_latency; int latency_sum; int interrupt_cnt; } ;


 struct latency_info li ;
 int octeon_get_clock_rate () ;
 int seq_printf (struct seq_file*,char*,int,int,int,int) ;

__attribute__((used)) static int show_latency(struct seq_file *m, void *v)
{
 u64 cpuclk, avg, max, min;
 struct latency_info curr_li = li;

 cpuclk = octeon_get_clock_rate();

 max = (curr_li.max_latency * 1000000000) / cpuclk;
 min = (curr_li.min_latency * 1000000000) / cpuclk;
 avg = (curr_li.latency_sum * 1000000000) / (cpuclk * curr_li.interrupt_cnt);

 seq_printf(m, "cnt: %10lld, avg: %7lld ns, max: %7lld ns, min: %7lld ns\n",
     curr_li.interrupt_cnt, avg, max, min);
 return 0;
}
