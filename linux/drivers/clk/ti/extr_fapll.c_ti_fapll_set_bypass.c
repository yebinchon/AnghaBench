
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fapll_data {int base; scalar_t__ bypass_bit_inverted; } ;


 int FAPLL_MAIN_BP ;
 int readl_relaxed (int ) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static void ti_fapll_set_bypass(struct fapll_data *fd)
{
 u32 v = readl_relaxed(fd->base);

 if (fd->bypass_bit_inverted)
  v &= ~FAPLL_MAIN_BP;
 else
  v |= FAPLL_MAIN_BP;
 writel_relaxed(v, fd->base);
}
