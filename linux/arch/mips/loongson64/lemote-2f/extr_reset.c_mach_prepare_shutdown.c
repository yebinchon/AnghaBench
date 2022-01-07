
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fl2f_shutdown () ;
 int mips_machtype ;
 int ml2f_shutdown () ;
 int yl2f89_shutdown () ;

void mach_prepare_shutdown(void)
{
 switch (mips_machtype) {
 case 132:
 case 129:
 case 131:
  fl2f_shutdown();
  break;
 case 130:
  ml2f_shutdown();
  break;
 case 128:
  yl2f89_shutdown();
  break;
 default:
  break;
 }
}
