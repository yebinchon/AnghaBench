
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int insn; int if_modifier; } ;
struct kprobe {TYPE_1__ ainsn; int opcode; int addr; } ;
struct insn {int dummy; } ;
typedef int kprobe_opcode_t ;


 int EINVAL ;
 int MAX_INSN_SIZE ;
 int __copy_instruction (int *,int ,int ,struct insn*) ;
 int is_IF_modifier (int *) ;
 int prepare_boost (int *,struct kprobe*,struct insn*) ;
 int text_poke (int ,int *,int) ;

__attribute__((used)) static int arch_copy_kprobe(struct kprobe *p)
{
 struct insn insn;
 kprobe_opcode_t buf[MAX_INSN_SIZE];
 int len;


 len = __copy_instruction(buf, p->addr, p->ainsn.insn, &insn);
 if (!len)
  return -EINVAL;





 len = prepare_boost(buf, p, &insn);


 p->ainsn.if_modifier = is_IF_modifier(buf);


 p->opcode = buf[0];


 text_poke(p->ainsn.insn, buf, len);

 return 0;
}
