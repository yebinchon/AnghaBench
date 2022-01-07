
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int BIT (int) ;




 scalar_t__ PINMUX_ALTERNATIVE_SEL ;
 int PINMUX_BANK_MFA ;

 scalar_t__ PINMUX_DEBUG_SEL ;

 scalar_t__ PINMUX_QUATERNARY_SEL ;
 scalar_t__ PINMUX_SECONDARY_SEL ;
 scalar_t__ PINMUX_TERTIARY_SEL ;
 scalar_t__ SEC_CONTROL_BASE ;
 scalar_t__ SYS_CONTROL_BASE ;
 int clrbits_le32 (scalar_t__,int ) ;
 int setbits_le32 (scalar_t__,int ) ;

void pinmux_set(int bank, int pin, int func)
{
 u32 reg;
 u32 base;


 if (bank == PINMUX_BANK_MFA)
  base = SYS_CONTROL_BASE;
 else
  base = SEC_CONTROL_BASE;

 clrbits_le32(base + PINMUX_SECONDARY_SEL, BIT(pin));
 clrbits_le32(base + PINMUX_TERTIARY_SEL, BIT(pin));
 clrbits_le32(base + PINMUX_QUATERNARY_SEL, BIT(pin));
 clrbits_le32(base + PINMUX_DEBUG_SEL, BIT(pin));
 clrbits_le32(base + PINMUX_ALTERNATIVE_SEL, BIT(pin));

 switch (func) {
 case 128:
 default:
  return;
  break;
 case 133:
  reg = base + PINMUX_SECONDARY_SEL;
  break;
 case 132:
  reg = base + PINMUX_TERTIARY_SEL;
  break;
 case 131:
  reg = base + PINMUX_QUATERNARY_SEL;
  break;
 case 129:
  reg = base + PINMUX_DEBUG_SEL;
  break;
 case 130:
  reg = base + PINMUX_ALTERNATIVE_SEL;
  break;
 }
 setbits_le32(reg, BIT(pin));
}
