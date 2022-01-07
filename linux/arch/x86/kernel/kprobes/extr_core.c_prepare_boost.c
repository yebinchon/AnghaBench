
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int boostable; scalar_t__ insn; } ;
struct kprobe {int addr; TYPE_1__ ainsn; } ;
struct insn {int length; } ;
typedef int kprobe_opcode_t ;


 int MAX_INSN_SIZE ;
 int RELATIVEJUMP_SIZE ;
 scalar_t__ can_boost (struct insn*,int) ;
 int synthesize_reljump (int *,scalar_t__,int) ;

__attribute__((used)) static int prepare_boost(kprobe_opcode_t *buf, struct kprobe *p,
     struct insn *insn)
{
 int len = insn->length;

 if (can_boost(insn, p->addr) &&
     MAX_INSN_SIZE - len >= RELATIVEJUMP_SIZE) {




  synthesize_reljump(buf + len, p->ainsn.insn + len,
       p->addr + insn->length);
  len += RELATIVEJUMP_SIZE;
  p->ainsn.boostable = 1;
 } else {
  p->ainsn.boostable = 0;
 }

 return len;
}
