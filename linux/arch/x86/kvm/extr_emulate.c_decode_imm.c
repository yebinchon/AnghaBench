
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct x86_emulate_ctxt {int _eip; } ;
struct TYPE_3__ {int ea; } ;
struct TYPE_4__ {TYPE_1__ mem; } ;
struct operand {unsigned int bytes; int val; TYPE_2__ addr; int type; } ;


 int OP_IMM ;
 int X86EMUL_CONTINUE ;
 void* insn_fetch (int ,struct x86_emulate_ctxt*) ;
 int s16 ;
 int s32 ;
 int s64 ;
 int s8 ;

__attribute__((used)) static int decode_imm(struct x86_emulate_ctxt *ctxt, struct operand *op,
        unsigned size, bool sign_extension)
{
 int rc = X86EMUL_CONTINUE;

 op->type = OP_IMM;
 op->bytes = size;
 op->addr.mem.ea = ctxt->_eip;

 switch (op->bytes) {
 case 1:
  op->val = insn_fetch(s8, ctxt);
  break;
 case 2:
  op->val = insn_fetch(s16, ctxt);
  break;
 case 4:
  op->val = insn_fetch(s32, ctxt);
  break;
 case 8:
  op->val = insn_fetch(s64, ctxt);
  break;
 }
 if (!sign_extension) {
  switch (op->bytes) {
  case 1:
   op->val &= 0xff;
   break;
  case 2:
   op->val &= 0xffff;
   break;
  case 4:
   op->val &= 0xffffffff;
   break;
  }
 }
done:
 return rc;
}
