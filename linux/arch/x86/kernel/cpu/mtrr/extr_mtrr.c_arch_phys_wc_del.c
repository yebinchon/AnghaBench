
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTRR_TO_PHYS_WC_OFFSET ;
 int WARN_ON (int) ;
 int mtrr_del (int,int ,int ) ;

void arch_phys_wc_del(int handle)
{
 if (handle >= 1) {
  WARN_ON(handle < MTRR_TO_PHYS_WC_OFFSET);
  mtrr_del(handle - MTRR_TO_PHYS_WC_OFFSET, 0, 0);
 }
}
