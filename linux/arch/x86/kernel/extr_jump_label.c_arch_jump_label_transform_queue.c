
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union jump_code_union {int dummy; } jump_code_union ;
struct text_poke_loc {void* addr; int len; void* detour; int opcode; } ;
struct jump_entry {int dummy; } ;
typedef enum jump_label_type { ____Placeholder_jump_label_type } jump_label_type ;


 int JUMP_LABEL_NOP_SIZE ;
 scalar_t__ SYSTEM_BOOTING ;
 size_t TP_VEC_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __jump_label_set_jump_code (struct jump_entry*,int,union jump_code_union*,int ) ;
 int arch_jump_label_transform (struct jump_entry*,int) ;
 scalar_t__ jump_entry_code (struct jump_entry*) ;
 scalar_t__ system_state ;
 struct text_poke_loc* tp_vec ;
 size_t tp_vec_nr ;

bool arch_jump_label_transform_queue(struct jump_entry *entry,
         enum jump_label_type type)
{
 struct text_poke_loc *tp;
 void *entry_code;

 if (system_state == SYSTEM_BOOTING) {



  arch_jump_label_transform(entry, type);
  return 1;
 }





 if (tp_vec_nr == TP_VEC_MAX)
  return 0;

 tp = &tp_vec[tp_vec_nr];

 entry_code = (void *)jump_entry_code(entry);
 if (tp_vec_nr > 0) {
  int prev = tp_vec_nr - 1;
  struct text_poke_loc *prev_tp = &tp_vec[prev];

  if (WARN_ON_ONCE(prev_tp->addr > entry_code))
   return 0;
 }

 __jump_label_set_jump_code(entry, type,
       (union jump_code_union *) &tp->opcode, 0);

 tp->addr = entry_code;
 tp->detour = entry_code + JUMP_LABEL_NOP_SIZE;
 tp->len = JUMP_LABEL_NOP_SIZE;

 tp_vec_nr++;

 return 1;
}
