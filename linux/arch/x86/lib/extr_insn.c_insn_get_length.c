
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int got; } ;
struct insn {char length; scalar_t__ kaddr; scalar_t__ next_byte; TYPE_1__ immediate; } ;


 int insn_get_immediate (struct insn*) ;

void insn_get_length(struct insn *insn)
{
 if (insn->length)
  return;
 if (!insn->immediate.got)
  insn_get_immediate(insn);
 insn->length = (unsigned char)((unsigned long)insn->next_byte
         - (unsigned long)insn->kaddr);
}
