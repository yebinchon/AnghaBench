
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;






__attribute__((used)) static bool is_timer_reg(u64 index)
{
 switch (index) {
 case 129:
 case 130:
 case 128:
  return 1;
 }
 return 0;
}
