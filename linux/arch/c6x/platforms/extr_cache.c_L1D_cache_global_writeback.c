
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IMCR_L1DWB ;
 int cpu_relax () ;
 int imcr_get (int ) ;
 int imcr_set (int ,unsigned int) ;

void L1D_cache_global_writeback(void)
{
 unsigned int set = 1;
 imcr_set(IMCR_L1DWB, set);
 while (imcr_get(IMCR_L1DWB) & 1)
  cpu_relax();
}
