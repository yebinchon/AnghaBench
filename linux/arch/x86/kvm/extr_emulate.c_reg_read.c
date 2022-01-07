
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct x86_emulate_ctxt {int regs_valid; int * _regs; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read_gpr ) (struct x86_emulate_ctxt*,unsigned int) ;} ;


 int stub1 (struct x86_emulate_ctxt*,unsigned int) ;

__attribute__((used)) static ulong reg_read(struct x86_emulate_ctxt *ctxt, unsigned nr)
{
 if (!(ctxt->regs_valid & (1 << nr))) {
  ctxt->regs_valid |= 1 << nr;
  ctxt->_regs[nr] = ctxt->ops->read_gpr(ctxt, nr);
 }
 return ctxt->_regs[nr];
}
