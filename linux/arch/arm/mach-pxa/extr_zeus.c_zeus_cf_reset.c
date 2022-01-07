
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ZEUS_CPLD_CONTROL ;
 int ZEUS_CPLD_CONTROL_CF_RST ;
 int __raw_readw (int ) ;
 int __raw_writew (int ,int ) ;

__attribute__((used)) static void zeus_cf_reset(int state)
{
 u16 cpld_state = __raw_readw(ZEUS_CPLD_CONTROL);

 if (state)
  cpld_state |= ZEUS_CPLD_CONTROL_CF_RST;
 else
  cpld_state &= ~ZEUS_CPLD_CONTROL_CF_RST;

 __raw_writew(cpld_state, ZEUS_CPLD_CONTROL);
}
