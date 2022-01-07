
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CACHE_CTL_mskDC_EN ;
 int CACHE_CTL_mskIC_EN ;
 int GIE_DISABLE () ;
 int NDS32_SR_CACHE_CTL ;
 int __nds32__mfsr (int ) ;
 int __nds32__mtsr_isb (int,int ) ;
 int cpu_dcache_wbinval_all () ;
 int cpu_icache_inval_all () ;

void cpu_reset(unsigned long reset)
{
 u32 tmp;
 GIE_DISABLE();
 tmp = __nds32__mfsr(NDS32_SR_CACHE_CTL);
 tmp &= ~(CACHE_CTL_mskIC_EN | CACHE_CTL_mskDC_EN);
 __nds32__mtsr_isb(tmp, NDS32_SR_CACHE_CTL);
 cpu_dcache_wbinval_all();
 cpu_icache_inval_all();

 __asm__ __volatile__("jr.toff %0\n\t"::"r"(reset));
}
