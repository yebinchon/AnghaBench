
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct x86_emulate_ctxt {int regs_valid; int regs_dirty; int * _regs; } ;



__attribute__((used)) static ulong *reg_write(struct x86_emulate_ctxt *ctxt, unsigned nr)
{
 ctxt->regs_valid |= 1 << nr;
 ctxt->regs_dirty |= 1 << nr;
 return &ctxt->_regs[nr];
}
