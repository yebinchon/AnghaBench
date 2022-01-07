
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MT_DIAG ;
 int __this_cpu_write (int ,int) ;
 int jiffies_64 ;
 int memcpy (int*,int*,int) ;
 int mt_cycles ;
 int mt_scaling_div ;
 int mt_scaling_jiffies ;
 int mt_scaling_mult ;
 int smp_cpu_mtid ;
 int stcctm (int ,int,int*) ;
 int* this_cpu_ptr (int ) ;

__attribute__((used)) static void update_mt_scaling(void)
{
 u64 cycles_new[8], *cycles_old;
 u64 delta, fac, mult, div;
 int i;

 stcctm(MT_DIAG, smp_cpu_mtid + 1, cycles_new);
 cycles_old = this_cpu_ptr(mt_cycles);
 fac = 1;
 mult = div = 0;
 for (i = 0; i <= smp_cpu_mtid; i++) {
  delta = cycles_new[i] - cycles_old[i];
  div += delta;
  mult *= i + 1;
  mult += delta * fac;
  fac *= i + 1;
 }
 div *= fac;
 if (div > 0) {

  __this_cpu_write(mt_scaling_mult, mult);
  __this_cpu_write(mt_scaling_div, div);
  memcpy(cycles_old, cycles_new,
         sizeof(u64) * (smp_cpu_mtid + 1));
 }
 __this_cpu_write(mt_scaling_jiffies, jiffies_64);
}
