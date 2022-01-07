
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;




 scalar_t__ PISTACHIO_CORE_REV_REG ;
 int __raw_readl (void const*) ;

const char *get_system_type(void)
{
 u32 core_rev;
 const char *sys_type;

 core_rev = __raw_readl((const void *)PISTACHIO_CORE_REV_REG);

 switch (core_rev) {
 case 128:
  sys_type = "IMG Pistachio SoC (B0)";
  break;

 case 129:
  sys_type = "IMG Pistachio SoC (A1)";
  break;

 default:
  sys_type = "IMG Pistachio SoC";
  break;
 }

 return sys_type;
}
