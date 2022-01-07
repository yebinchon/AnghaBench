
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_err (char*,unsigned int) ;

void set_dma_page(unsigned int chan, char pagenr)
{
 pr_err("dma%d: trying to set_dma_page\n", chan);
}
