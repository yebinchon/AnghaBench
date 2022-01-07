
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HBP_NUM ;
 int TYPE_DATA ;

int hw_breakpoint_slots(int type)
{
 if (type == TYPE_DATA)
  return HBP_NUM;
 return 0;
}
