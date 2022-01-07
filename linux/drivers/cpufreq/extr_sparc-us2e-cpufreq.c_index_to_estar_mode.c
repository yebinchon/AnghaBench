
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 unsigned long ESTAR_MODE_DIV_1 ;
 unsigned long ESTAR_MODE_DIV_2 ;
 unsigned long ESTAR_MODE_DIV_4 ;
 unsigned long ESTAR_MODE_DIV_6 ;
 unsigned long ESTAR_MODE_DIV_8 ;

__attribute__((used)) static unsigned long index_to_estar_mode(unsigned int index)
{
 switch (index) {
 case 0:
  return ESTAR_MODE_DIV_1;

 case 1:
  return ESTAR_MODE_DIV_2;

 case 2:
  return ESTAR_MODE_DIV_4;

 case 3:
  return ESTAR_MODE_DIV_6;

 case 4:
  return ESTAR_MODE_DIV_8;

 default:
  BUG();
 }
}
