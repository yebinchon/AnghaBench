
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct insn {TYPE_1__* type; int opcode; } ;
struct gen_opcode {int nr; struct insn* insn; } ;
struct TYPE_2__ {scalar_t__ byte; } ;


 int add_to_group (struct gen_opcode*,struct insn*,int) ;
 int cmpopcode ;
 int memcpy (char*,int ,int) ;
 int print_opcode (struct insn*,int) ;
 int printf (char*,...) ;
 int qsort (struct insn*,int,int,int ) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static void print_opcode_table(struct gen_opcode *desc)
{
 char opcode[2] = "";
 struct insn *insn;
 int i, offset;

 qsort(desc->insn, desc->nr, sizeof(*desc->insn), cmpopcode);
 printf("#define OPCODE_TABLE_INITIALIZER { \\\n");
 offset = 0;
 for (i = 0; i < desc->nr; i++) {
  insn = &desc->insn[i];
  if (insn->type->byte == 0)
   continue;
  add_to_group(desc, insn, offset);
  if (strncmp(opcode, insn->opcode, 2)) {
   memcpy(opcode, insn->opcode, 2);
   printf("\t/* %.2s */ \\\n", opcode);
  }
  print_opcode(insn, offset);
  offset++;
 }
 printf("\t/* 1-byte opcode instructions */ \\\n");
 for (i = 0; i < desc->nr; i++) {
  insn = &desc->insn[i];
  if (insn->type->byte != 0)
   continue;
  add_to_group(desc, insn, offset);
  print_opcode(insn, offset);
  offset++;
 }
 printf("}\n\n");
}
