
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jump_entry {int dummy; } ;
typedef enum jump_label_type { ____Placeholder_jump_label_type } jump_label_type ;


 int BUG_ON (int) ;
 int JUMP_LABEL_JMP ;
 int JUMP_LABEL_NOP_SIZE ;
 int J_INSN ;
 int J_OFFSET_MASK ;
 int J_SIGN_MASK ;
 int NOP_INSN ;
 int jump_entry_code (struct jump_entry*) ;
 int jump_entry_target (struct jump_entry*) ;
 int patch_text (int,int*,int ) ;

void arch_jump_label_transform(struct jump_entry *e,
          enum jump_label_type type)
{
 u32 d = (jump_entry_target(e) - (jump_entry_code(e) + 4));
 u32 insn;


 BUG_ON(!((d & J_SIGN_MASK) == 0 ||
   (d & J_SIGN_MASK) == J_SIGN_MASK));

 if (type == JUMP_LABEL_JMP) {





 } else {
  insn = NOP_INSN;
 }

 patch_text(jump_entry_code(e), &insn, JUMP_LABEL_NOP_SIZE);
}
