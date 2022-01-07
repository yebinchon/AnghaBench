
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ia64_mca_ucmc_extension ;

void
ia64_unreg_MCA_extension(void)
{
 if (ia64_mca_ucmc_extension)
  ia64_mca_ucmc_extension = ((void*)0);
}
