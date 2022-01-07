
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_vmcs12_ext_field(unsigned long field)
{
 switch (field) {
 case 152:
 case 160:
 case 132:
 case 156:
 case 148:
 case 142:
 case 136:
 case 128:
 case 153:
 case 161:
 case 133:
 case 157:
 case 149:
 case 143:
 case 137:
 case 129:
 case 146:
 case 140:
 case 155:
 case 159:
 case 151:
 case 145:
 case 139:
 case 131:
 case 154:
 case 162:
 case 134:
 case 158:
 case 150:
 case 144:
 case 138:
 case 130:
 case 147:
 case 141:
 case 135:
 case 163:
  return 1;
 default:
  break;
 }

 return 0;
}
