
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alchemy_get_cputype () ;
 int alchemy_sleep_au1000 () ;
 int alchemy_sleep_au1300 () ;
 int alchemy_sleep_au1550 () ;
 int restore_core_regs () ;
 int save_core_regs () ;

void au_sleep(void)
{
 save_core_regs();

 switch (alchemy_get_cputype()) {
 case 133:
 case 129:
 case 132:
  alchemy_sleep_au1000();
  break;
 case 128:
 case 131:
  alchemy_sleep_au1550();
  break;
 case 130:
  alchemy_sleep_au1300();
  break;
 }

 restore_core_regs();
}
