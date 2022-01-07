
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AR2315_IRQ_LCBUS_PCI ;
 int AR2315_IRQ_MISC ;
 int AR2315_IRQ_WLAN0 ;
 int ATH25_IRQ_CPU_CLOCK ;
 int CAUSEF_IP2 ;
 int CAUSEF_IP3 ;
 int CAUSEF_IP5 ;
 int CAUSEF_IP7 ;
 int do_IRQ (int ) ;
 int read_c0_cause () ;
 int read_c0_status () ;
 int spurious_interrupt () ;

__attribute__((used)) static void ar2315_irq_dispatch(void)
{
 u32 pending = read_c0_status() & read_c0_cause();

 if (pending & CAUSEF_IP3)
  do_IRQ(AR2315_IRQ_WLAN0);




 else if (pending & CAUSEF_IP2)
  do_IRQ(AR2315_IRQ_MISC);
 else if (pending & CAUSEF_IP7)
  do_IRQ(ATH25_IRQ_CPU_CLOCK);
 else
  spurious_interrupt();
}
