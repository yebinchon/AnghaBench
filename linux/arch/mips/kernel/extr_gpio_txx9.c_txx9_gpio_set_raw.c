
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dout; } ;


 int __raw_readl (int *) ;
 int __raw_writel (int,int *) ;
 TYPE_1__* txx9_pioptr ;

__attribute__((used)) static void txx9_gpio_set_raw(unsigned int offset, int value)
{
 u32 val;
 val = __raw_readl(&txx9_pioptr->dout);
 if (value)
  val |= 1 << offset;
 else
  val &= ~(1 << offset);
 __raw_writel(val, &txx9_pioptr->dout);
}
