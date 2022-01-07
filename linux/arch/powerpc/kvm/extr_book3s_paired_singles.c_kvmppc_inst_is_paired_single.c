
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int hflags; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int BOOK3S_HFLAG_PAIRED_SINGLE ;
 int get_op (int ) ;
 int inst_get_field (int ,int,int) ;

__attribute__((used)) static bool kvmppc_inst_is_paired_single(struct kvm_vcpu *vcpu, u32 inst)
{
 if (!(vcpu->arch.hflags & BOOK3S_HFLAG_PAIRED_SINGLE))
  return 0;

 switch (get_op(inst)) {
 case 135:
 case 134:
 case 133:
 case 132:
 case 137:
 case 136:
 case 139:
 case 138:
 case 129:
 case 128:
 case 131:
 case 130:
  return 1;
 case 4:

  switch (inst_get_field(inst, 21, 30)) {
  case 183:
  case 187:
  case 185:
  case 188:
  case 175:
  case 182:
  case 177:
  case 184:
  case 176:
  case 186:
  case 181:
  case 180:
  case 179:
  case 178:
   return 1;
  }

  switch (inst_get_field(inst, 25, 30)) {
  case 189:
  case 190:
   return 1;
  }

  switch (inst_get_field(inst, 26, 30)) {
  case 191:
  case 192:
  case 200:
  case 199:
  case 204:
  case 203:
  case 206:
  case 193:
  case 207:
  case 194:
  case 196:
  case 201:
  case 195:
  case 202:
  case 205:
  case 197:
  case 198:
   return 1;
  }
  break;
 case 59:
  switch (inst_get_field(inst, 21, 30)) {
  case 174:
  case 165:
  case 173:
  case 167:
  case 166:
   return 1;
  }
  switch (inst_get_field(inst, 26, 30)) {
  case 170:
  case 171:
  case 172:
  case 168:
  case 169:
   return 1;
  }
  break;
 case 63:
  switch (inst_get_field(inst, 21, 30)) {
  case 143:
  case 142:
  case 141:
  case 140:
  case 145:
  case 144:
  case 161:
  case 162:
  case 152:
  case 155:
  case 164:
  case 149:
  case 157:
  case 163:
  case 146:
  case 159:
  case 158:
  case 148:
  case 160:
   return 1;
  }
  switch (inst_get_field(inst, 26, 30)) {
  case 153:
  case 147:
  case 154:
  case 156:
  case 150:
  case 151:
   return 1;
  }
  break;
 case 31:
  switch (inst_get_field(inst, 21, 30)) {
  case 213:
  case 214:
  case 215:
  case 216:
  case 210:
  case 211:
  case 208:
  case 209:
  case 212:
   return 1;
  }
  break;
 }

 return 0;
}
