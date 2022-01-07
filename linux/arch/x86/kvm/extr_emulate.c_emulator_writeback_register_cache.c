
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int dummy; } ;


 int writeback_registers (struct x86_emulate_ctxt*) ;

void emulator_writeback_register_cache(struct x86_emulate_ctxt *ctxt)
{
 writeback_registers(ctxt);
}
