
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ea; void* seg; } ;
struct TYPE_4__ {TYPE_1__ mem; void* reg; } ;
struct operand {int bytes; int orig_val; int val; void* type; int count; int valptr; TYPE_2__ addr; } ;
struct x86_emulate_ctxt {int d; int op_bytes; struct operand memop; void* _eip; void* seg_override; int modrm_rm; struct operand* memopp; } ;


 int BitOp ;
 int ByteOp ;
 void* OP_IMM ;
 void* OP_MEM ;
 void* OP_NONE ;
 void* OP_REG ;
 int VCPU_REGS_RAX ;
 int VCPU_REGS_RBX ;
 int VCPU_REGS_RCX ;
 int VCPU_REGS_RDI ;
 int VCPU_REGS_RDX ;
 int VCPU_REGS_RSI ;
 int VCPU_SREG_CS ;
 int VCPU_SREG_DS ;
 void* VCPU_SREG_ES ;
 int VCPU_SREG_FS ;
 int VCPU_SREG_GS ;
 int VCPU_SREG_SS ;
 int X86EMUL_CONTINUE ;
 void* address_mask (struct x86_emulate_ctxt*,int ) ;
 int decode_imm (struct x86_emulate_ctxt*,struct operand*,int,int) ;
 void* decode_register (struct x86_emulate_ctxt*,int ,int) ;
 int decode_register_operand (struct x86_emulate_ctxt*,struct operand*) ;
 int fetch_bit_operand (struct x86_emulate_ctxt*) ;
 int fetch_register_operand (struct operand*) ;
 int imm_size (struct x86_emulate_ctxt*) ;
 int insn_fetch_arr (int ,int,struct x86_emulate_ctxt*) ;
 int reg_read (struct x86_emulate_ctxt*,int ) ;
 void* reg_rmw (struct x86_emulate_ctxt*,int ) ;
 void* register_address (struct x86_emulate_ctxt*,int ) ;

__attribute__((used)) static int decode_operand(struct x86_emulate_ctxt *ctxt, struct operand *op,
     unsigned d)
{
 int rc = X86EMUL_CONTINUE;

 switch (d) {
 case 131:
  decode_register_operand(ctxt, op);
  break;
 case 140:
  rc = decode_imm(ctxt, op, 1, 0);
  break;
 case 138:
  ctxt->memop.bytes = (ctxt->d & ByteOp) ? 1 : ctxt->op_bytes;
 mem_common:
  *op = ctxt->memop;
  ctxt->memopp = op;
  if (ctxt->d & BitOp)
   fetch_bit_operand(ctxt);
  op->orig_val = op->val;
  break;
 case 135:
  ctxt->memop.bytes = (ctxt->op_bytes == 8) ? 16 : 8;
  goto mem_common;
 case 157:
  op->type = OP_REG;
  op->bytes = (ctxt->d & ByteOp) ? 1 : ctxt->op_bytes;
  op->addr.reg = reg_rmw(ctxt, VCPU_REGS_RAX);
  fetch_register_operand(op);
  op->orig_val = op->val;
  break;
 case 155:
  op->type = OP_REG;
  op->bytes = (ctxt->d & ByteOp) ? 2 : ctxt->op_bytes;
  op->addr.reg = reg_rmw(ctxt, VCPU_REGS_RAX);
  fetch_register_operand(op);
  op->orig_val = op->val;
  break;
 case 156:
  if (ctxt->d & ByteOp) {
   op->type = OP_NONE;
   break;
  }
  op->type = OP_REG;
  op->bytes = ctxt->op_bytes;
  op->addr.reg = reg_rmw(ctxt, VCPU_REGS_RDX);
  fetch_register_operand(op);
  op->orig_val = op->val;
  break;
 case 152:
  op->type = OP_MEM;
  op->bytes = (ctxt->d & ByteOp) ? 1 : ctxt->op_bytes;
  op->addr.mem.ea =
   register_address(ctxt, VCPU_REGS_RDI);
  op->addr.mem.seg = VCPU_SREG_ES;
  op->val = 0;
  op->count = 1;
  break;
 case 150:
  op->type = OP_REG;
  op->bytes = 2;
  op->addr.reg = reg_rmw(ctxt, VCPU_REGS_RDX);
  fetch_register_operand(op);
  break;
 case 154:
  op->type = OP_IMM;
  op->bytes = 1;
  op->val = reg_read(ctxt, VCPU_REGS_RCX) & 0xff;
  break;
 case 144:
  rc = decode_imm(ctxt, op, 1, 1);
  break;
 case 132:
  op->type = OP_IMM;
  op->bytes = 1;
  op->val = 1;
  break;
 case 146:
  rc = decode_imm(ctxt, op, imm_size(ctxt), 1);
  break;
 case 145:
  rc = decode_imm(ctxt, op, ctxt->op_bytes, 1);
  break;
 case 134:
  ctxt->memop.bytes = 1;
  if (ctxt->memop.type == OP_REG) {
   ctxt->memop.addr.reg = decode_register(ctxt,
     ctxt->modrm_rm, 1);
   fetch_register_operand(&ctxt->memop);
  }
  goto mem_common;
 case 137:
  ctxt->memop.bytes = 2;
  goto mem_common;
 case 136:
  ctxt->memop.bytes = 4;
  goto mem_common;
 case 141:
  rc = decode_imm(ctxt, op, 2, 0);
  break;
 case 142:
  rc = decode_imm(ctxt, op, imm_size(ctxt), 0);
  break;
 case 130:
  op->type = OP_MEM;
  op->bytes = (ctxt->d & ByteOp) ? 1 : ctxt->op_bytes;
  op->addr.mem.ea =
   register_address(ctxt, VCPU_REGS_RSI);
  op->addr.mem.seg = ctxt->seg_override;
  op->val = 0;
  op->count = 1;
  break;
 case 128:
  op->type = OP_MEM;
  op->bytes = (ctxt->d & ByteOp) ? 1 : ctxt->op_bytes;
  op->addr.mem.ea =
   address_mask(ctxt,
    reg_read(ctxt, VCPU_REGS_RBX) +
    (reg_read(ctxt, VCPU_REGS_RAX) & 0xff));
  op->addr.mem.seg = ctxt->seg_override;
  op->val = 0;
  break;
 case 143:
  op->type = OP_IMM;
  op->addr.mem.ea = ctxt->_eip;
  op->bytes = ctxt->op_bytes + 2;
  insn_fetch_arr(op->valptr, op->bytes, ctxt);
  break;
 case 133:
  ctxt->memop.bytes = ctxt->op_bytes + 2;
  goto mem_common;
 case 149:
  op->type = OP_IMM;
  op->val = VCPU_SREG_ES;
  break;
 case 153:
  op->type = OP_IMM;
  op->val = VCPU_SREG_CS;
  break;
 case 129:
  op->type = OP_IMM;
  op->val = VCPU_SREG_SS;
  break;
 case 151:
  op->type = OP_IMM;
  op->val = VCPU_SREG_DS;
  break;
 case 148:
  op->type = OP_IMM;
  op->val = VCPU_SREG_FS;
  break;
 case 147:
  op->type = OP_IMM;
  op->val = VCPU_SREG_GS;
  break;
 case 139:

 default:
  op->type = OP_NONE;
  break;
 }

done:
 return rc;
}
