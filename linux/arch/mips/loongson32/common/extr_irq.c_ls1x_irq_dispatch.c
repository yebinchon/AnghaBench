
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LS1X_INTC_INTIEN (int) ;
 int LS1X_INTC_INTISR (int) ;
 int LS1X_IRQ (int,int ) ;
 int __ffs (int) ;
 int __raw_readl (int ) ;
 int do_IRQ (int) ;

__attribute__((used)) static void ls1x_irq_dispatch(int n)
{
 u32 int_status, irq;


 int_status = __raw_readl(LS1X_INTC_INTISR(n)) &
   __raw_readl(LS1X_INTC_INTIEN(n));

 if (int_status) {
  irq = LS1X_IRQ(n, __ffs(int_status));
  do_IRQ(irq);
 }
}
