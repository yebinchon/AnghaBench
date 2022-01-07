
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long dma_find_base (unsigned int) ;

__attribute__((used)) static unsigned long dma_base_addr(unsigned int chan)
{
 unsigned long base = dma_find_base(chan);


 if (chan >= 9)
  chan -= 6;
 if (chan >= 4)
  base += 0x10;

 return base + (chan * 0x10);
}
