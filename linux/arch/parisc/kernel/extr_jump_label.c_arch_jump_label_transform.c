
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jump_entry {int dummy; } ;
typedef enum jump_label_type { ____Placeholder_jump_label_type } jump_label_type ;


 int BUG_ON (int) ;
 int INSN_NOP ;
 int JUMP_LABEL_JMP ;
 scalar_t__ jump_entry_code (struct jump_entry*) ;
 scalar_t__ jump_entry_target (struct jump_entry*) ;
 int patch_text (void*,int) ;
 int reassemble_17 (int) ;

void arch_jump_label_transform(struct jump_entry *entry,
          enum jump_label_type type)
{
 void *addr = (void *)jump_entry_code(entry);
 u32 insn;

 if (type == JUMP_LABEL_JMP) {
  void *target = (void *)jump_entry_target(entry);
  int distance = target - addr;






  distance -= 8;
  BUG_ON(distance > 262143 || distance < -262144);
  insn = 0xe8000002 | reassemble_17(distance >> 2);
 } else {
  insn = INSN_NOP;
 }

 patch_text(addr, insn);
}
