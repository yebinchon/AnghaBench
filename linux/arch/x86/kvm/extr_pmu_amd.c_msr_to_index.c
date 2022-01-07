
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum index { ____Placeholder_index } index ;


 int INDEX_ERROR ;
 int INDEX_FIVE ;
 int INDEX_FOUR ;
 int INDEX_ONE ;
 int INDEX_THREE ;
 int INDEX_TWO ;
 int INDEX_ZERO ;
__attribute__((used)) static enum index msr_to_index(u32 msr)
{
 switch (msr) {
 case 147:
 case 141:
 case 135:
 case 131:
  return INDEX_ZERO;
 case 146:
 case 140:
 case 134:
 case 130:
  return INDEX_ONE;
 case 145:
 case 139:
 case 133:
 case 129:
  return INDEX_TWO;
 case 144:
 case 138:
 case 132:
 case 128:
  return INDEX_THREE;
 case 143:
 case 137:
  return INDEX_FOUR;
 case 142:
 case 136:
  return INDEX_FIVE;
 default:
  return INDEX_ERROR;
 }
}
