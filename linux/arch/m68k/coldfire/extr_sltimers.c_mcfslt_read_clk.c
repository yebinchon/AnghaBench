
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct clocksource {int dummy; } ;


 int MCFSLT_SCNT ;
 int MCFSLT_SSR ;
 int MCFSLT_SSR_TE ;
 int TA (int ) ;
 int __raw_readl (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mcfslt_cnt ;
 int mcfslt_cycles_per_jiffy ;

__attribute__((used)) static u64 mcfslt_read_clk(struct clocksource *cs)
{
 unsigned long flags;
 u32 cycles, scnt;

 local_irq_save(flags);
 scnt = __raw_readl(TA(MCFSLT_SCNT));
 cycles = mcfslt_cnt;
 if (__raw_readl(TA(MCFSLT_SSR)) & MCFSLT_SSR_TE) {
  cycles += mcfslt_cycles_per_jiffy;
  scnt = __raw_readl(TA(MCFSLT_SCNT));
 }
 local_irq_restore(flags);


 return cycles + ((mcfslt_cycles_per_jiffy - 1) - scnt);
}
