
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_poke_loc {void* detour; void* addr; size_t len; scalar_t__ opcode; } ;


 size_t POKE_MAX_OPCODE_SIZE ;
 int WARN_ONCE (int,char*,size_t) ;
 int memcpy (void*,void const*,size_t) ;
 int text_poke_bp_batch (struct text_poke_loc*,int) ;

void text_poke_bp(void *addr, const void *opcode, size_t len, void *handler)
{
 struct text_poke_loc tp = {
  .detour = handler,
  .addr = addr,
  .len = len,
 };

 if (len > POKE_MAX_OPCODE_SIZE) {
  WARN_ONCE(1, "len is larger than %d\n", POKE_MAX_OPCODE_SIZE);
  return;
 }

 memcpy((void *)tp.opcode, opcode, len);

 text_poke_bp_batch(&tp, 1);
}
