
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long ulong ;
struct x86_emulate_ctxt {int op_bytes; unsigned long _eip; } ;
struct segmented_address {unsigned long ea; int seg; } ;
typedef enum x86emul_mode { ____Placeholder_x86emul_mode } x86emul_mode ;


 int VCPU_SREG_CS ;
 int X86EMUL_CONTINUE ;
 int __linearize (struct x86_emulate_ctxt*,struct segmented_address,unsigned int*,int,int,int,int,unsigned long*) ;

__attribute__((used)) static inline int assign_eip(struct x86_emulate_ctxt *ctxt, ulong dst,
        enum x86emul_mode mode)
{
 ulong linear;
 int rc;
 unsigned max_size;
 struct segmented_address addr = { .seg = VCPU_SREG_CS,
        .ea = dst };

 if (ctxt->op_bytes != sizeof(unsigned long))
  addr.ea = dst & ((1UL << (ctxt->op_bytes << 3)) - 1);
 rc = __linearize(ctxt, addr, &max_size, 1, 0, 1, mode, &linear);
 if (rc == X86EMUL_CONTINUE)
  ctxt->_eip = addr.ea;
 return rc;
}
