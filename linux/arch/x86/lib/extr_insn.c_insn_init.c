
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn {int x86_64; int opnd_bytes; int addr_bytes; void const* next_byte; void const* end_kaddr; void const* kaddr; } ;


 int MAX_INSN_SIZE ;
 int memset (struct insn*,int ,int) ;

void insn_init(struct insn *insn, const void *kaddr, int buf_len, int x86_64)
{




 if (buf_len > MAX_INSN_SIZE)
  buf_len = MAX_INSN_SIZE;

 memset(insn, 0, sizeof(*insn));
 insn->kaddr = kaddr;
 insn->end_kaddr = kaddr + buf_len;
 insn->next_byte = kaddr;
 insn->x86_64 = x86_64 ? 1 : 0;
 insn->opnd_bytes = 4;
 if (x86_64)
  insn->addr_bytes = 8;
 else
  insn->addr_bytes = 4;
}
