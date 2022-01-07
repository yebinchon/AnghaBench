
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct x86_emulate_ctxt {int dummy; } ;


 int reg_read (struct x86_emulate_ctxt*,unsigned int) ;
 int * reg_write (struct x86_emulate_ctxt*,unsigned int) ;

__attribute__((used)) static ulong *reg_rmw(struct x86_emulate_ctxt *ctxt, unsigned nr)
{
 reg_read(ctxt, nr);
 return reg_write(ctxt, nr);
}
