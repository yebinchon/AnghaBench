
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTRR_TO_PHYS_WC_OFFSET ;

int arch_phys_wc_index(int handle)
{
 if (handle < MTRR_TO_PHYS_WC_OFFSET)
  return -1;
 else
  return handle - MTRR_TO_PHYS_WC_OFFSET;
}
