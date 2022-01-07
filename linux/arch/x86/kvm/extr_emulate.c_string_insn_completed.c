
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int b; scalar_t__ rep_prefix; int eflags; } ;


 scalar_t__ REPE_PREFIX ;
 scalar_t__ REPNE_PREFIX ;
 int X86_EFLAGS_ZF ;

__attribute__((used)) static bool string_insn_completed(struct x86_emulate_ctxt *ctxt)
{







 if (((ctxt->b == 0xa6) || (ctxt->b == 0xa7) ||
      (ctxt->b == 0xae) || (ctxt->b == 0xaf))
     && (((ctxt->rep_prefix == REPE_PREFIX) &&
   ((ctxt->eflags & X86_EFLAGS_ZF) == 0))
  || ((ctxt->rep_prefix == REPNE_PREFIX) &&
      ((ctxt->eflags & X86_EFLAGS_ZF) == X86_EFLAGS_ZF))))
  return 1;

 return 0;
}
