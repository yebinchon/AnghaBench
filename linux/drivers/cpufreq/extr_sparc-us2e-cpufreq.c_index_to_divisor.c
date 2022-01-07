
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;

__attribute__((used)) static unsigned long index_to_divisor(unsigned int index)
{
 switch (index) {
 case 0:
  return 1;

 case 1:
  return 2;

 case 2:
  return 4;

 case 3:
  return 6;

 case 4:
  return 8;

 default:
  BUG();
 }
}
