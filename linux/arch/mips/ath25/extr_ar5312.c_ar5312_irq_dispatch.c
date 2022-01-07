
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AR5312_IRQ_MISC ;
 int AR5312_IRQ_WLAN0 ;
 int AR5312_IRQ_WLAN1 ;
 int ATH25_IRQ_CPU_CLOCK ;
 int CAUSEF_IP2 ;
 int CAUSEF_IP5 ;
 int CAUSEF_IP6 ;
 int CAUSEF_IP7 ;
 int do_IRQ (int ) ;
 int read_c0_cause () ;
 int read_c0_status () ;
 int spurious_interrupt () ;

__attribute__((used)) static void ar5312_irq_dispatch(void)
{
 u32 pending = read_c0_status() & read_c0_cause();

 if (pending & CAUSEF_IP2)
  do_IRQ(AR5312_IRQ_WLAN0);
 else if (pending & CAUSEF_IP5)
  do_IRQ(AR5312_IRQ_WLAN1);
 else if (pending & CAUSEF_IP6)
  do_IRQ(AR5312_IRQ_MISC);
 else if (pending & CAUSEF_IP7)
  do_IRQ(ATH25_IRQ_CPU_CLOCK);
 else
  spurious_interrupt();
}
