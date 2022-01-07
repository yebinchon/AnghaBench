
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jump_entry {int dummy; } ;
struct insn {int opcode; int offset; } ;


 int jump_entry_code (struct jump_entry*) ;
 int jump_entry_target (struct jump_entry*) ;

__attribute__((used)) static void jump_label_make_branch(struct jump_entry *entry, struct insn *insn)
{

 insn->opcode = 0xc0f4;
 insn->offset = (jump_entry_target(entry) - jump_entry_code(entry)) >> 1;
}
