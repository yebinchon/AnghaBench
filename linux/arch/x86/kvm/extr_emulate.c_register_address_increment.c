
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct x86_emulate_ctxt {int ad_bytes; } ;


 int assign_register (scalar_t__*,scalar_t__,int ) ;
 scalar_t__* reg_rmw (struct x86_emulate_ctxt*,int) ;

__attribute__((used)) static inline void
register_address_increment(struct x86_emulate_ctxt *ctxt, int reg, int inc)
{
 ulong *preg = reg_rmw(ctxt, reg);

 assign_register(preg, *preg + inc, ctxt->ad_bytes);
}
