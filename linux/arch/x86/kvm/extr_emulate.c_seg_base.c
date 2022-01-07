
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ctxt {scalar_t__ mode; TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned long (* get_cached_segment_base ) (struct x86_emulate_ctxt*,int) ;} ;


 int VCPU_SREG_FS ;
 scalar_t__ X86EMUL_MODE_PROT64 ;
 unsigned long stub1 (struct x86_emulate_ctxt*,int) ;

__attribute__((used)) static unsigned long seg_base(struct x86_emulate_ctxt *ctxt, int seg)
{
 if (ctxt->mode == X86EMUL_MODE_PROT64 && seg < VCPU_SREG_FS)
  return 0;

 return ctxt->ops->get_cached_segment_base(ctxt, seg);
}
