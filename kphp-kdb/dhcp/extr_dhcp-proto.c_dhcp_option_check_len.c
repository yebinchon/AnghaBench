
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dhcp_option { ____Placeholder_dhcp_option } dhcp_option ;
__attribute__((used)) static int dhcp_option_check_len (enum dhcp_option o, int len) {
  switch (o) {
  case 160:
  case 189:
    return len == 0;
  case 182:
  case 162:
  case 195:
  case 204:
  case 156:
  case 179:
  case 155:
  case 132:
  case 188:
  case 138:
  case 137:
  case 170:
  case 161:
  case 193:
    return len == 1;
  case 202:
  case 178:
  case 184:
  case 177:
    return len == 2;
  case 140:
  case 134:
  case 158:
  case 200:
  case 146:
  case 203:
  case 136:
  case 150:
  case 183:
  case 145:
  case 151:
  case 152:
    return len == 4;
  case 186:
  case 176:
  case 192:
  case 148:
  case 187:
  case 167:
  case 166:
  case 135:
  case 201:
  case 159:
  case 175:
  case 190:
    return len >= 1;
  case 157:
    return len >= 2 && !(len & 1);
  case 174:
    return len >= 0 && !(len & 3);
  case 147:
  case 133:
  case 173:
  case 191:
  case 181:
  case 198:
  case 180:
  case 185:
  case 149:
  case 139:
  case 168:
  case 163:
  case 171:
  case 172:
  case 128:
  case 129:
  case 165:
  case 144:
  case 153:
  case 164:
  case 194:
  case 197:
  case 196:
  case 141:
  case 142:
    return len >= 4 && !(len & 3);
  case 154:
  case 143:
    return len >= 8 && !(len & 7);
  case 130:
  case 169:
  case 131:
  case 199:
    return len >= 0;
  }
  return 0;
}
