
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_17__ {int cc; int rt; size_t fmt; int cond; int fs; } ;
struct TYPE_16__ {int fmt; int ft; int fd; int func; int fs; void* opcode; } ;
struct TYPE_15__ {int op; int rt; int func; int fd; int fs; void* opcode; } ;
struct TYPE_14__ {int op; size_t fmt; int rt; int fs; } ;
struct TYPE_26__ {size_t fmt; int rt; int fs; } ;
struct TYPE_25__ {int rt; int rd; int func; int re; int rs; void* opcode; } ;
struct TYPE_24__ {int func; size_t fmt; int ft; int fd; int fs; int op; } ;
struct TYPE_23__ {size_t fmt; int cc; int fd; int fs; int op; } ;
struct TYPE_22__ {int op; int index; int fd; int base; } ;
struct TYPE_21__ {int func; int fd; int fs; int ft; int fr; void* opcode; } ;
struct TYPE_20__ {int fd; int fs; int ft; int fr; } ;
struct TYPE_19__ {int opcode; int rt; int rs; } ;
struct TYPE_18__ {int flag; int bc; void* opcode; } ;
union mips_instruction {TYPE_13__ mm_fp4_format; TYPE_12__ fp0_format; TYPE_11__ fp1_format; TYPE_10__ mm_fp1_format; TYPE_9__ mm_fp3_format; TYPE_8__ r_format; TYPE_7__ mm_fp0_format; TYPE_6__ mm_fp2_format; TYPE_5__ mm_fp5_format; TYPE_4__ fp6_format; TYPE_3__ mm_fp6_format; TYPE_2__ mm_i_format; TYPE_1__ fb_format; } ;


 int MM_MIPS32_COND_FC ;
 int SIGILL ;
 int bc_op ;
 int cfc_op ;
 void* cop1_op ;
 void* cop1x_op ;
 int ctc_op ;
 int* dwl_format ;
 int fabs_op ;
 int fadd_op ;
 int fceil_op ;
 int fceill_op ;
 int fcvtd_op ;
 int fcvtl_op ;
 int fcvts_op ;
 int fcvtw_op ;
 int fdiv_op ;
 int ffloor_op ;
 int ffloorl_op ;
 int fmov_op ;
 int fmovc_op ;
 int fmovn_op ;
 int fmovz_op ;
 int fmul_op ;
 int fneg_op ;
 int frecip_op ;
 int fround_op ;
 int froundl_op ;
 int frsqrt_op ;
 int fsqrt_op ;
 int fsub_op ;
 int ftrunc_op ;
 int ftruncl_op ;
 int ldc1_op ;
 int ldxc1_op ;
 int lwc1_op ;
 int lwxc1_op ;
 int madd_d_op ;
 int madd_s_op ;
 int mfc_op ;
 int mfhc_op ;
 int mm_bc1f_op ;
 int mm_bc1t_op ;




 int mm_fadd_op ;
 int mm_fdiv_op ;




 int mm_fmovf_op ;
 int mm_fmovn_op ;
 int mm_fmovt_op ;
 int mm_fmovz_op ;
 int mm_fmul_op ;







 int mm_fsub_op ;



 int mm_ldxc1_op ;

 int mm_lwxc1_op ;
 int mm_sdxc1_op ;

 int mm_swxc1_op ;
 int movc_op ;
 int msub_d_op ;
 int msub_s_op ;
 int mtc_op ;
 int mthc_op ;
 int nmadd_d_op ;
 int nmadd_s_op ;
 int nmsub_d_op ;
 int nmsub_s_op ;
 int* sd_format ;
 int sdc1_op ;
 void** sdps_format ;
 int sdxc1_op ;
 void* spec_op ;
 int swc1_op ;
 int* swl_format ;
 int swxc1_op ;

__attribute__((used)) static int microMIPS32_to_MIPS32(union mips_instruction *insn_ptr)
{
 union mips_instruction insn = *insn_ptr;
 union mips_instruction mips32_insn = insn;
 int func, fmt, op;

 switch (insn.mm_i_format.opcode) {
 case 141:
  mips32_insn.mm_i_format.opcode = ldc1_op;
  mips32_insn.mm_i_format.rt = insn.mm_i_format.rs;
  mips32_insn.mm_i_format.rs = insn.mm_i_format.rt;
  break;
 case 140:
  mips32_insn.mm_i_format.opcode = lwc1_op;
  mips32_insn.mm_i_format.rt = insn.mm_i_format.rs;
  mips32_insn.mm_i_format.rs = insn.mm_i_format.rt;
  break;
 case 129:
  mips32_insn.mm_i_format.opcode = sdc1_op;
  mips32_insn.mm_i_format.rt = insn.mm_i_format.rs;
  mips32_insn.mm_i_format.rs = insn.mm_i_format.rt;
  break;
 case 128:
  mips32_insn.mm_i_format.opcode = swc1_op;
  mips32_insn.mm_i_format.rt = insn.mm_i_format.rs;
  mips32_insn.mm_i_format.rs = insn.mm_i_format.rt;
  break;
 case 130:

  if ((insn.mm_i_format.rt == mm_bc1f_op) ||
      (insn.mm_i_format.rt == mm_bc1t_op)) {
   mips32_insn.fb_format.opcode = cop1_op;
   mips32_insn.fb_format.bc = bc_op;
   mips32_insn.fb_format.flag =
    (insn.mm_i_format.rt == mm_bc1t_op) ? 1 : 0;
  } else
   return SIGILL;
  break;
 case 131:
  switch (insn.mm_fp0_format.func) {
  case 180:
  case 177:
  case 179:
  case 176:
  case 174:
  case 172:
  case 173:
  case 171:
   op = insn.mm_fp0_format.func;
   if (op == 180)
    func = madd_s_op;
   else if (op == 177)
    func = madd_d_op;
   else if (op == 179)
    func = nmadd_s_op;
   else if (op == 176)
    func = nmadd_d_op;
   else if (op == 174)
    func = msub_s_op;
   else if (op == 172)
    func = msub_d_op;
   else if (op == 173)
    func = nmsub_s_op;
   else
    func = nmsub_d_op;
   mips32_insn.fp6_format.opcode = cop1x_op;
   mips32_insn.fp6_format.fr = insn.mm_fp6_format.fr;
   mips32_insn.fp6_format.ft = insn.mm_fp6_format.ft;
   mips32_insn.fp6_format.fs = insn.mm_fp6_format.fs;
   mips32_insn.fp6_format.fd = insn.mm_fp6_format.fd;
   mips32_insn.fp6_format.func = func;
   break;
  case 178:
   func = -1;
   op = insn.mm_fp5_format.op & 0x7;
   if (op == mm_ldxc1_op)
    func = ldxc1_op;
   else if (op == mm_sdxc1_op)
    func = sdxc1_op;
   else if (op == mm_lwxc1_op)
    func = lwxc1_op;
   else if (op == mm_swxc1_op)
    func = swxc1_op;

   if (func != -1) {
    mips32_insn.r_format.opcode = cop1x_op;
    mips32_insn.r_format.rs =
     insn.mm_fp5_format.base;
    mips32_insn.r_format.rt =
     insn.mm_fp5_format.index;
    mips32_insn.r_format.rd = 0;
    mips32_insn.r_format.re = insn.mm_fp5_format.fd;
    mips32_insn.r_format.func = func;
   } else
    return SIGILL;
   break;
  case 175:
   op = -1;
   if (insn.mm_fp2_format.op == mm_fmovt_op)
    op = 1;
   else if (insn.mm_fp2_format.op == mm_fmovf_op)
    op = 0;
   if (op != -1) {
    mips32_insn.fp0_format.opcode = cop1_op;
    mips32_insn.fp0_format.fmt =
     sdps_format[insn.mm_fp2_format.fmt];
    mips32_insn.fp0_format.ft =
     (insn.mm_fp2_format.cc<<2) + op;
    mips32_insn.fp0_format.fs =
     insn.mm_fp2_format.fs;
    mips32_insn.fp0_format.fd =
     insn.mm_fp2_format.fd;
    mips32_insn.fp0_format.func = fmovc_op;
   } else
    return SIGILL;
   break;
  case 170:
   func = -1;
   if (insn.mm_fp0_format.op == mm_fadd_op)
    func = fadd_op;
   else if (insn.mm_fp0_format.op == mm_fsub_op)
    func = fsub_op;
   else if (insn.mm_fp0_format.op == mm_fmul_op)
    func = fmul_op;
   else if (insn.mm_fp0_format.op == mm_fdiv_op)
    func = fdiv_op;
   if (func != -1) {
    mips32_insn.fp0_format.opcode = cop1_op;
    mips32_insn.fp0_format.fmt =
     sdps_format[insn.mm_fp0_format.fmt];
    mips32_insn.fp0_format.ft =
     insn.mm_fp0_format.ft;
    mips32_insn.fp0_format.fs =
     insn.mm_fp0_format.fs;
    mips32_insn.fp0_format.fd =
     insn.mm_fp0_format.fd;
    mips32_insn.fp0_format.func = func;
   } else
    return SIGILL;
   break;
  case 169:
   func = -1;
   if (insn.mm_fp0_format.op == mm_fmovn_op)
    func = fmovn_op;
   else if (insn.mm_fp0_format.op == mm_fmovz_op)
    func = fmovz_op;
   if (func != -1) {
    mips32_insn.fp0_format.opcode = cop1_op;
    mips32_insn.fp0_format.fmt =
     sdps_format[insn.mm_fp0_format.fmt];
    mips32_insn.fp0_format.ft =
     insn.mm_fp0_format.ft;
    mips32_insn.fp0_format.fs =
     insn.mm_fp0_format.fs;
    mips32_insn.fp0_format.fd =
     insn.mm_fp0_format.fd;
    mips32_insn.fp0_format.func = func;
   } else
    return SIGILL;
   break;
  case 168:
   switch (insn.mm_fp1_format.op) {
   case 137:
   case 136:
   case 135:
   case 134:
    if ((insn.mm_fp1_format.op & 0x7f) ==
        137)
     op = 0;
    else
     op = 1;
    mips32_insn.r_format.opcode = spec_op;
    mips32_insn.r_format.rs = insn.mm_fp4_format.fs;
    mips32_insn.r_format.rt =
     (insn.mm_fp4_format.cc << 2) + op;
    mips32_insn.r_format.rd = insn.mm_fp4_format.rt;
    mips32_insn.r_format.re = 0;
    mips32_insn.r_format.func = movc_op;
    break;
   case 160:
   case 159:
   case 157:
   case 156:
    if ((insn.mm_fp1_format.op & 0x7f) ==
        160) {
     func = fcvtd_op;
     fmt = swl_format[insn.mm_fp3_format.fmt];
    } else {
     func = fcvts_op;
     fmt = dwl_format[insn.mm_fp3_format.fmt];
    }
    mips32_insn.fp0_format.opcode = cop1_op;
    mips32_insn.fp0_format.fmt = fmt;
    mips32_insn.fp0_format.ft = 0;
    mips32_insn.fp0_format.fs =
     insn.mm_fp3_format.fs;
    mips32_insn.fp0_format.fd =
     insn.mm_fp3_format.rt;
    mips32_insn.fp0_format.func = func;
    break;
   case 152:
   case 151:
   case 164:
   case 163:
   case 150:
   case 149:
    if ((insn.mm_fp1_format.op & 0x7f) ==
        152)
     func = fmov_op;
    else if ((insn.mm_fp1_format.op & 0x7f) ==
      164)
     func = fabs_op;
    else
     func = fneg_op;
    mips32_insn.fp0_format.opcode = cop1_op;
    mips32_insn.fp0_format.fmt =
     sdps_format[insn.mm_fp3_format.fmt];
    mips32_insn.fp0_format.ft = 0;
    mips32_insn.fp0_format.fs =
     insn.mm_fp3_format.fs;
    mips32_insn.fp0_format.fd =
     insn.mm_fp3_format.rt;
    mips32_insn.fp0_format.func = func;
    break;
   case 154:
   case 153:
   case 162:
   case 161:
   case 143:
   case 142:
   case 147:
   case 146:
   case 158:
   case 155:
    if (insn.mm_fp1_format.op == 154)
     func = ffloorl_op;
    else if (insn.mm_fp1_format.op == 153)
     func = ffloor_op;
    else if (insn.mm_fp1_format.op == 162)
     func = fceill_op;
    else if (insn.mm_fp1_format.op == 161)
     func = fceil_op;
    else if (insn.mm_fp1_format.op == 143)
     func = ftruncl_op;
    else if (insn.mm_fp1_format.op == 142)
     func = ftrunc_op;
    else if (insn.mm_fp1_format.op == 147)
     func = froundl_op;
    else if (insn.mm_fp1_format.op == 146)
     func = fround_op;
    else if (insn.mm_fp1_format.op == 158)
     func = fcvtl_op;
    else
     func = fcvtw_op;
    mips32_insn.fp0_format.opcode = cop1_op;
    mips32_insn.fp0_format.fmt =
     sd_format[insn.mm_fp1_format.fmt];
    mips32_insn.fp0_format.ft = 0;
    mips32_insn.fp0_format.fs =
     insn.mm_fp1_format.fs;
    mips32_insn.fp0_format.fd =
     insn.mm_fp1_format.rt;
    mips32_insn.fp0_format.func = func;
    break;
   case 145:
   case 144:
   case 148:
    if (insn.mm_fp1_format.op == 145)
     func = frsqrt_op;
    else if (insn.mm_fp1_format.op == 144)
     func = fsqrt_op;
    else
     func = frecip_op;
    mips32_insn.fp0_format.opcode = cop1_op;
    mips32_insn.fp0_format.fmt =
     sdps_format[insn.mm_fp1_format.fmt];
    mips32_insn.fp0_format.ft = 0;
    mips32_insn.fp0_format.fs =
     insn.mm_fp1_format.fs;
    mips32_insn.fp0_format.fd =
     insn.mm_fp1_format.rt;
    mips32_insn.fp0_format.func = func;
    break;
   case 139:
   case 133:
   case 166:
   case 165:
   case 138:
   case 132:
    if (insn.mm_fp1_format.op == 139)
     op = mfc_op;
    else if (insn.mm_fp1_format.op == 133)
     op = mtc_op;
    else if (insn.mm_fp1_format.op == 166)
     op = cfc_op;
    else if (insn.mm_fp1_format.op == 165)
     op = ctc_op;
    else if (insn.mm_fp1_format.op == 138)
     op = mfhc_op;
    else
     op = mthc_op;
    mips32_insn.fp1_format.opcode = cop1_op;
    mips32_insn.fp1_format.op = op;
    mips32_insn.fp1_format.rt =
     insn.mm_fp1_format.rt;
    mips32_insn.fp1_format.fs =
     insn.mm_fp1_format.fs;
    mips32_insn.fp1_format.fd = 0;
    mips32_insn.fp1_format.func = 0;
    break;
   default:
    return SIGILL;
   }
   break;
  case 167:
   mips32_insn.fp0_format.opcode = cop1_op;
   mips32_insn.fp0_format.fmt =
    sdps_format[insn.mm_fp4_format.fmt];
   mips32_insn.fp0_format.ft = insn.mm_fp4_format.rt;
   mips32_insn.fp0_format.fs = insn.mm_fp4_format.fs;
   mips32_insn.fp0_format.fd = insn.mm_fp4_format.cc << 2;
   mips32_insn.fp0_format.func =
    insn.mm_fp4_format.cond | MM_MIPS32_COND_FC;
   break;
  default:
   return SIGILL;
  }
  break;
 default:
  return SIGILL;
 }

 *insn_ptr = mips32_insn;
 return 0;
}
