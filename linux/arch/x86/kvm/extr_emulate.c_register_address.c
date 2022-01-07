
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int dummy; } ;


 unsigned long address_mask (struct x86_emulate_ctxt*,int ) ;
 int reg_read (struct x86_emulate_ctxt*,int) ;

__attribute__((used)) static inline unsigned long
register_address(struct x86_emulate_ctxt *ctxt, int reg)
{
 return address_mask(ctxt, reg_read(ctxt, reg));
}
