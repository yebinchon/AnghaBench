
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MT_DIAG ;
 int VTIMER_MAX_SLICE ;
 int __this_cpu_write (int ,int) ;
 int jiffies ;
 int mt_cycles ;
 int mt_scaling_div ;
 int mt_scaling_jiffies ;
 int mt_scaling_mult ;
 int set_vtimer (int ) ;
 scalar_t__ smp_cpu_mtid ;
 int stcctm (int ,scalar_t__,int ) ;
 int this_cpu_ptr (int ) ;

void vtime_init(void)
{

 set_vtimer(VTIMER_MAX_SLICE);

 if (smp_cpu_mtid) {
  __this_cpu_write(mt_scaling_jiffies, jiffies);
  __this_cpu_write(mt_scaling_mult, 1);
  __this_cpu_write(mt_scaling_div, 1);
  stcctm(MT_DIAG, smp_cpu_mtid + 1, this_cpu_ptr(mt_cycles));
 }
}
