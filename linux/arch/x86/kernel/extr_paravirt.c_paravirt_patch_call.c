
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct branch {int opcode; unsigned long delta; } ;


 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;
 int pr_warn (char*,void*) ;

__attribute__((used)) static unsigned paravirt_patch_call(void *insn_buff, const void *target,
        unsigned long addr, unsigned len)
{
 const int call_len = 5;
 struct branch *b = insn_buff;
 unsigned long delta = (unsigned long)target - (addr+call_len);

 if (len < call_len) {
  pr_warn("paravirt: Failed to patch indirect CALL at %ps\n", (void *)addr);

  BUG_ON(1);
 }

 b->opcode = 0xe8;
 b->delta = delta;
 BUILD_BUG_ON(sizeof(*b) != call_len);

 return call_len;
}
