
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSDP ;
 int dma_common_ch_end ;
 int dma_write (int ,int,int) ;

__attribute__((used)) static void omap2_clear_dma(int lch)
{
 int i;

 for (i = CSDP; i <= dma_common_ch_end; i += 1)
  dma_write(0, i, lch);
}
