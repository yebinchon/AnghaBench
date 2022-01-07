
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IMCR_L2WB ;
 int cpu_relax () ;
 scalar_t__ imcr_get (int ) ;
 int imcr_set (int ,int) ;

void L2_cache_global_writeback(void)
{
 imcr_set(IMCR_L2WB, 1);
 while (imcr_get(IMCR_L2WB))
  cpu_relax();
}
