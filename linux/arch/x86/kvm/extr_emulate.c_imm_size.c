
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int d; int op_bytes; } ;


 int ByteOp ;

__attribute__((used)) static unsigned imm_size(struct x86_emulate_ctxt *ctxt)
{
 unsigned size;

 size = (ctxt->d & ByteOp) ? 1 : ctxt->op_bytes;
 if (size == 8)
  size = 4;
 return size;
}
