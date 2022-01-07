
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOR ;
 int CPC ;
 int dma_write (int ,int,int) ;

__attribute__((used)) static void omap1_clear_lch_regs(int lch)
{
 int i;

 for (i = CPC; i <= COLOR; i += 1)
  dma_write(0, i, lch);
}
