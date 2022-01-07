
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EINVAL ;
 int is_known_insn (unsigned char*) ;

int probe_is_prohibited_opcode(u16 *insn)
{
 if (!is_known_insn((unsigned char *)insn))
  return -EINVAL;
 switch (insn[0] >> 8) {
 case 0x0c:
 case 0x0b:
 case 0x83:
 case 0x44:
 case 0xac:
 case 0xad:
  return -EINVAL;
 case 0xc6:
  switch (insn[0] & 0x0f) {
  case 0x00:
   return -EINVAL;
  }
 }
 switch (insn[0]) {
 case 0x0101:
 case 0xb25a:
 case 0xb240:
 case 0xb258:
 case 0xb218:
 case 0xb228:
 case 0xb98d:
 case 0xe560:
 case 0xe561:
 case 0xb2f8:
  return -EINVAL;
 }
 return 0;
}
