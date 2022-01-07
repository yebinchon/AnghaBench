
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IE_IRQ0 ;
 scalar_t__ SNI_PCIT_INT_REG ;
 scalar_t__ SNI_PCIT_INT_START ;
 int clear_c0_status (int ) ;
 int do_IRQ (scalar_t__) ;
 int ffs (int) ;
 scalar_t__ likely (int) ;
 int set_c0_status (int ) ;

__attribute__((used)) static void pcit_hwint0(void)
{
 u32 pending = *(volatile u32 *)SNI_PCIT_INT_REG;
 int irq;

 clear_c0_status(IE_IRQ0);
 irq = ffs((pending >> 16) & 0x3f);

 if (likely(irq > 0))
  do_IRQ(irq + SNI_PCIT_INT_START - 1);
 set_c0_status(IE_IRQ0);
}
