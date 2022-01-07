
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int value; } ;
struct TYPE_6__ {int nbytes; int* bytes; } ;
struct TYPE_5__ {int nbytes; } ;
struct insn {TYPE_4__ immediate; int length; TYPE_2__ prefixes; TYPE_1__ opcode; } ;
struct TYPE_7__ {int opc1; int offs; int ilen; } ;
struct arch_uprobe {int * ops; TYPE_3__ branch; } ;


 int ENOSYS ;
 int ENOTSUPP ;
 int OPCODE1 (struct insn*) ;
 int OPCODE2 (struct insn*) ;
 int branch_clear_offset (struct arch_uprobe*,struct insn*) ;
 int branch_xol_ops ;
 int is_cond_jmp_opcode (int) ;

__attribute__((used)) static int branch_setup_xol_ops(struct arch_uprobe *auprobe, struct insn *insn)
{
 u8 opc1 = OPCODE1(insn);
 int i;

 switch (opc1) {
 case 0xeb:
 case 0xe9:
 case 0x90:
  break;

 case 0xe8:
  branch_clear_offset(auprobe, insn);
  break;

 case 0x0f:
  if (insn->opcode.nbytes != 2)
   return -ENOSYS;




  opc1 = OPCODE2(insn) - 0x10;

 default:
  if (!is_cond_jmp_opcode(opc1))
   return -ENOSYS;
 }






 for (i = 0; i < insn->prefixes.nbytes; i++) {
  if (insn->prefixes.bytes[i] == 0x66)
   return -ENOTSUPP;
 }

 auprobe->branch.opc1 = opc1;
 auprobe->branch.ilen = insn->length;
 auprobe->branch.offs = insn->immediate.value;

 auprobe->ops = &branch_xol_ops;
 return 0;
}
