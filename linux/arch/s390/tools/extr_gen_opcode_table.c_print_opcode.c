
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct insn {char* opcode; char* format; int name_len; char* name; char* upper; TYPE_1__* type; } ;
struct TYPE_2__ {scalar_t__ byte; } ;


 int printf (char*,...) ;

__attribute__((used)) static void print_opcode(struct insn *insn, int nr)
{
 char *opcode;

 opcode = insn->opcode;
 if (insn->type->byte != 0)
  opcode += 2;
 printf("\t[%4d] = { .opfrag = 0x%s, .format = INSTR_%s, ", nr, opcode, insn->format);
 if (insn->name_len < 6)
  printf(".name = \"%s\" ", insn->name);
 else
  printf(".offset = LONG_INSN_%s ", insn->upper);
 printf("}, \\\n");
}
