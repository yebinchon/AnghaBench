
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
__attribute__((used)) static bool is_avic_unaccelerated_access_trap(u32 offset)
{
 bool ret = 0;

 switch (offset) {
 case 139:
 case 142:
 case 131:
 case 138:
 case 143:
 case 130:
 case 141:
 case 140:
 case 133:
 case 132:
 case 134:
 case 137:
 case 136:
 case 135:
 case 128:
 case 129:
  ret = 1;
  break;
 default:
  break;
 }
 return ret;
}
