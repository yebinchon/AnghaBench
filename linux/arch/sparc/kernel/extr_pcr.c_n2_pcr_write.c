
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned long HV_EOK ;
 int HV_N2_PERF_SPARC_CTL ;
 int PCR_N2_HTRACE ;
 int WARN_ON_ONCE (int) ;
 int direct_pcr_write (unsigned long,int) ;
 unsigned long sun4v_niagara2_setperf (int ,int) ;

__attribute__((used)) static void n2_pcr_write(unsigned long reg_num, u64 val)
{
 unsigned long ret;

 WARN_ON_ONCE(reg_num != 0);
 if (val & PCR_N2_HTRACE) {
  ret = sun4v_niagara2_setperf(HV_N2_PERF_SPARC_CTL, val);
  if (ret != HV_EOK)
   direct_pcr_write(reg_num, val);
 } else
  direct_pcr_write(reg_num, val);
}
