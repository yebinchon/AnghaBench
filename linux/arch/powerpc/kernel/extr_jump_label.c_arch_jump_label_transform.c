
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jump_entry {int target; scalar_t__ code; } ;
typedef enum jump_label_type { ____Placeholder_jump_label_type } jump_label_type ;


 int JUMP_LABEL_JMP ;
 int PPC_INST_NOP ;
 int patch_branch (int *,int ,int ) ;
 int patch_instruction (int *,int ) ;

void arch_jump_label_transform(struct jump_entry *entry,
          enum jump_label_type type)
{
 u32 *addr = (u32 *)(unsigned long)entry->code;

 if (type == JUMP_LABEL_JMP)
  patch_branch(addr, entry->target, 0);
 else
  patch_instruction(addr, PPC_INST_NOP);
}
