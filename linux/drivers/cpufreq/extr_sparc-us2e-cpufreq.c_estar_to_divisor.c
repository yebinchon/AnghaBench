
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;





 unsigned long ESTAR_MODE_DIV_MASK ;

__attribute__((used)) static unsigned long estar_to_divisor(unsigned long estar)
{
 unsigned long ret;

 switch (estar & ESTAR_MODE_DIV_MASK) {
 case 132:
  ret = 1;
  break;
 case 131:
  ret = 2;
  break;
 case 130:
  ret = 4;
  break;
 case 129:
  ret = 6;
  break;
 case 128:
  ret = 8;
  break;
 default:
  BUG();
 }

 return ret;
}
