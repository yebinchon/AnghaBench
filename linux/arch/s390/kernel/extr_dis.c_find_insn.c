
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_opcode_offset {unsigned char opcode; int byte; unsigned char mask; size_t offset; int count; } ;
struct s390_insn {unsigned char opfrag; } ;


 int ARRAY_SIZE (struct s390_opcode_offset*) ;
 struct s390_insn* opcode ;
 struct s390_opcode_offset* opcode_offset ;

struct s390_insn *find_insn(unsigned char *code)
{
 struct s390_opcode_offset *entry;
 struct s390_insn *insn;
 unsigned char opfrag;
 int i;






 for (i = 0; i < ARRAY_SIZE(opcode_offset); i++) {
  entry = &opcode_offset[i];
  if (entry->opcode == code[0])
   break;
 }

 opfrag = *(code + entry->byte) & entry->mask;

 insn = &opcode[entry->offset];
 for (i = 0; i < entry->count; i++) {
  if (insn->opfrag == opfrag)
   return insn;
  insn++;
 }
 return ((void*)0);
}
