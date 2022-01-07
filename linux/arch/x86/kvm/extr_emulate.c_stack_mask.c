
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long ulong ;
typedef int u16 ;
struct x86_emulate_ctxt {scalar_t__ mode; TYPE_1__* ops; } ;
struct desc_struct {int d; } ;
struct TYPE_2__ {int (* get_segment ) (struct x86_emulate_ctxt*,int *,struct desc_struct*,int *,int ) ;} ;


 int VCPU_SREG_SS ;
 scalar_t__ X86EMUL_MODE_PROT64 ;
 int stub1 (struct x86_emulate_ctxt*,int *,struct desc_struct*,int *,int ) ;

__attribute__((used)) static ulong stack_mask(struct x86_emulate_ctxt *ctxt)
{
 u16 sel;
 struct desc_struct ss;

 if (ctxt->mode == X86EMUL_MODE_PROT64)
  return ~0UL;
 ctxt->ops->get_segment(ctxt, &sel, &ss, ((void*)0), VCPU_SREG_SS);
 return ~0U >> ((ss.d ^ 1) * 16);
}
