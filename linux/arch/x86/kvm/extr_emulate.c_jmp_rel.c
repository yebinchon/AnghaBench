
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {scalar_t__ _eip; } ;


 int assign_eip_near (struct x86_emulate_ctxt*,scalar_t__) ;

__attribute__((used)) static inline int jmp_rel(struct x86_emulate_ctxt *ctxt, int rel)
{
 return assign_eip_near(ctxt, ctxt->_eip + rel);
}
