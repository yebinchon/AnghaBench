
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jump_entry {int target; scalar_t__ code; } ;
typedef enum jump_label_type { ____Placeholder_jump_label_type } jump_label_type ;


 int JUMP_LABEL_JMP ;
 int __patch_text_early (void*,unsigned int) ;
 unsigned int arm_gen_branch (scalar_t__,int ) ;
 unsigned int arm_gen_nop () ;
 int patch_text (void*,unsigned int) ;

__attribute__((used)) static void __arch_jump_label_transform(struct jump_entry *entry,
     enum jump_label_type type,
     bool is_static)
{
 void *addr = (void *)entry->code;
 unsigned int insn;

 if (type == JUMP_LABEL_JMP)
  insn = arm_gen_branch(entry->code, entry->target);
 else
  insn = arm_gen_nop();

 if (is_static)
  __patch_text_early(addr, insn);
 else
  patch_text(addr, insn);
}
