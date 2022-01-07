
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fapll_data {scalar_t__ bypass_bit_inverted; int base; } ;


 int FAPLL_MAIN_BP ;
 int readl_relaxed (int ) ;

__attribute__((used)) static bool ti_fapll_clock_is_bypass(struct fapll_data *fd)
{
 u32 v = readl_relaxed(fd->base);

 if (fd->bypass_bit_inverted)
  return !(v & FAPLL_MAIN_BP);
 else
  return !!(v & FAPLL_MAIN_BP);
}
