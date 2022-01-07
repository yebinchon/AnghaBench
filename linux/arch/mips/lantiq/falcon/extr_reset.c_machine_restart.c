
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOOT_PW1 ;
 scalar_t__ BOOT_PW1_REG ;
 int BOOT_PW2 ;
 scalar_t__ BOOT_PW2_REG ;
 scalar_t__ BOOT_REG_BASE ;
 int WDT_PW1 ;
 int WDT_PW2 ;
 scalar_t__ WDT_REG_BASE ;
 int local_irq_disable () ;
 int ltq_w32 (int,void*) ;
 int unreachable () ;

__attribute__((used)) static void machine_restart(char *command)
{
 local_irq_disable();


 ltq_w32(BOOT_PW1, (void *)BOOT_PW1_REG);
 ltq_w32(BOOT_PW2, (void *)BOOT_PW2_REG);
 ltq_w32(0, (void *)BOOT_REG_BASE);


 ltq_w32(WDT_PW1, (void *)WDT_REG_BASE);
 ltq_w32(WDT_PW2 |
  (0x3 << 26) |
  (0x2 << 24) |
  (0x1 << 31) |
  (1),
  (void *)WDT_REG_BASE);
 unreachable();
}
