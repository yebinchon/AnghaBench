
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int dummy; } ;


 int MF_VECTOR ;
 int X86EMUL_CONTINUE ;
 int asm_safe (char*) ;
 int emulate_exception (struct x86_emulate_ctxt*,int ,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int flush_pending_x87_faults(struct x86_emulate_ctxt *ctxt)
{
 int rc;

 rc = asm_safe("fwait");

 if (unlikely(rc != X86EMUL_CONTINUE))
  return emulate_exception(ctxt, MF_VECTOR, 0, 0);

 return X86EMUL_CONTINUE;
}
