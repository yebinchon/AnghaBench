
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q40_LED_ON () ;
 int halted ;
 int pr_info (char*) ;

__attribute__((used)) static void q40_reset(void)
{
 halted = 1;
 pr_info("*******************************************\n"
  "Called q40_reset : press the RESET button!!\n"
  "*******************************************\n");
 Q40_LED_ON();
 while (1)
  ;
}
