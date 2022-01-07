
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {scalar_t__ regs_valid; scalar_t__ regs_dirty; } ;



__attribute__((used)) static void invalidate_registers(struct x86_emulate_ctxt *ctxt)
{
 ctxt->regs_dirty = 0;
 ctxt->regs_valid = 0;
}
