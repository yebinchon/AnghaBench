
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jump_entry {scalar_t__ code; scalar_t__ target; } ;
typedef int s32 ;
typedef enum jump_label_type { ____Placeholder_jump_label_type } jump_label_type ;


 int BUG_ON (int) ;
 int JUMP_LABEL_JMP ;
 int flushi (int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int text_mutex ;

void arch_jump_label_transform(struct jump_entry *entry,
          enum jump_label_type type)
{
 u32 *insn = (u32 *) (unsigned long) entry->code;
 u32 val;

 if (type == JUMP_LABEL_JMP) {
  s32 off = (s32)entry->target - (s32)entry->code;
  bool use_v9_branch = 0;

  BUG_ON(off & 3);





  if (use_v9_branch) {


   val = 0x10680000 | (((u32) off >> 2) & 0x7ffff);
  } else {

   BUG_ON(off > 0x7fffff);
   BUG_ON(off < -0x800000);

   val = 0x10800000 | (((u32) off >> 2) & 0x3fffff);
  }
 } else {
  val = 0x01000000;
 }

 mutex_lock(&text_mutex);
 *insn = val;
 flushi(insn);
 mutex_unlock(&text_mutex);
}
