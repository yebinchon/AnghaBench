
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int context; } ;






 int omap4_clkdm_allow_idle (struct clockdomain*) ;
 int omap4_clkdm_deny_idle (struct clockdomain*) ;
 int omap4_clkdm_sleep (struct clockdomain*) ;
 int omap4_clkdm_wakeup (struct clockdomain*) ;

__attribute__((used)) static int omap4_clkdm_restore_context(struct clockdomain *clkdm)
{
 switch (clkdm->context) {
 case 131:
  omap4_clkdm_deny_idle(clkdm);
  break;
 case 129:
  omap4_clkdm_sleep(clkdm);
  break;
 case 128:
  omap4_clkdm_wakeup(clkdm);
  break;
 case 130:
  omap4_clkdm_allow_idle(clkdm);
  break;
 }
 return 0;
}
