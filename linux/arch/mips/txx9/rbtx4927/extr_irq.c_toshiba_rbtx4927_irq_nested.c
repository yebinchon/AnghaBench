
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RBTX4927_IRQ_IOC ;
 int __fls8 (int) ;
 int rbtx4927_imstat_addr ;
 int readb (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int toshiba_rbtx4927_irq_nested(int sw_irq)
{
 u8 level3;

 level3 = readb(rbtx4927_imstat_addr) & 0x1f;
 if (unlikely(!level3))
  return -1;
 return RBTX4927_IRQ_IOC + __fls8(level3);
}
