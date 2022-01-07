
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fl2f_reboot () ;
 int mips_machtype ;
 int ml2f_reboot () ;
 int yl2f89_reboot () ;

void mach_prepare_reboot(void)
{
 switch (mips_machtype) {
 case 132:
 case 129:
 case 131:
  fl2f_reboot();
  break;
 case 130:
  ml2f_reboot();
  break;
 case 128:
  yl2f89_reboot();
  break;
 default:
  break;
 }
}
