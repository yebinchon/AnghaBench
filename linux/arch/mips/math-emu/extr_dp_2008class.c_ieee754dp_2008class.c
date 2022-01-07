
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754dp {int dummy; } ieee754dp ;


 int COMPXDP ;
 int EXPLODEXDP ;






 int pr_err (char*,int) ;
 int xc ;
 int xs ;

int ieee754dp_2008class(union ieee754dp x)
{
 COMPXDP;

 EXPLODEXDP;
 switch(xc) {
 case 129:
  return 0x01;
 case 130:
  return 0x02;
 case 132:
  return 0x04 << (xs ? 0 : 4);
 case 131:
  return 0x08 << (xs ? 0 : 4);
 case 133:
  return 0x10 << (xs ? 0 : 4);
 case 128:
  return 0x20 << (xs ? 0 : 4);
 default:
  pr_err("Unknown class: %d\n", xc);
  return 0;
 }
}
