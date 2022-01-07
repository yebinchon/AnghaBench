
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int FIXUP_BRANCH_NOT_TAKEN ;
 int FIXUP_NOT_REQUIRED ;
 int FIXUP_PSW_NORMAL ;
 int FIXUP_RETURN_REGISTER ;

int probe_get_fixup_type(u16 *insn)
{

 int fixup = FIXUP_PSW_NORMAL;

 switch (insn[0] >> 8) {
 case 0x05:
 case 0x0d:
  fixup = FIXUP_RETURN_REGISTER;

  if ((insn[0] & 0x0f) == 0)
   fixup |= FIXUP_BRANCH_NOT_TAKEN;
  break;
 case 0x06:
 case 0x07:
  fixup = FIXUP_BRANCH_NOT_TAKEN;
  break;
 case 0x45:
 case 0x4d:
  fixup = FIXUP_RETURN_REGISTER;
  break;
 case 0x47:
 case 0x46:
 case 0x86:
 case 0x87:
  fixup = FIXUP_BRANCH_NOT_TAKEN;
  break;
 case 0x82:
  fixup = FIXUP_NOT_REQUIRED;
  break;
 case 0xb2:
  if ((insn[0] & 0xff) == 0xb2)
   fixup = FIXUP_NOT_REQUIRED;
  break;
 case 0xa7:
  if ((insn[0] & 0x0f) == 0x05)
   fixup |= FIXUP_RETURN_REGISTER;
  break;
 case 0xc0:
  if ((insn[0] & 0x0f) == 0x05)
   fixup |= FIXUP_RETURN_REGISTER;
  break;
 case 0xeb:
  switch (insn[2] & 0xff) {
  case 0x44:
  case 0x45:
   fixup = FIXUP_BRANCH_NOT_TAKEN;
   break;
  }
  break;
 case 0xe3:
  if ((insn[2] & 0xff) == 0x46)
   fixup = FIXUP_BRANCH_NOT_TAKEN;
  break;
 case 0xec:
  switch (insn[2] & 0xff) {
  case 0xe5:
  case 0xe6:
  case 0xf6:
  case 0xf7:
  case 0xfc:
  case 0xfd:
  case 0xfe:
  case 0xff:
   fixup = FIXUP_BRANCH_NOT_TAKEN;
   break;
  }
  break;
 }
 return fixup;
}
