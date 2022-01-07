
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ boostable; scalar_t__ insn; } ;
struct kprobe {TYPE_1__ ainsn; int * addr; int opcode; } ;
typedef int kprobe_opcode_t ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_MTMSRD (int ) ;
 scalar_t__ IS_RFI (int ) ;
 scalar_t__ IS_RFID (int ) ;
 int MAX_INSN_SIZE ;
 int flush_icache_range (unsigned long,unsigned long) ;
 scalar_t__ get_insn_slot () ;
 int memcpy (scalar_t__,int *,int) ;
 int printk (char*) ;

int arch_prepare_kprobe(struct kprobe *p)
{
 int ret = 0;
 kprobe_opcode_t insn = *p->addr;

 if ((unsigned long)p->addr & 0x03) {
  printk("Attempt to register kprobe at an unaligned address\n");
  ret = -EINVAL;
 } else if (IS_MTMSRD(insn) || IS_RFID(insn) || IS_RFI(insn)) {
  printk("Cannot register a kprobe on rfi/rfid or mtmsr[d]\n");
  ret = -EINVAL;
 }



 if (!ret) {
  p->ainsn.insn = get_insn_slot();
  if (!p->ainsn.insn)
   ret = -ENOMEM;
 }

 if (!ret) {
  memcpy(p->ainsn.insn, p->addr,
    MAX_INSN_SIZE * sizeof(kprobe_opcode_t));
  p->opcode = *p->addr;
  flush_icache_range((unsigned long)p->ainsn.insn,
   (unsigned long)p->ainsn.insn + sizeof(kprobe_opcode_t));
 }

 p->ainsn.boostable = 0;
 return ret;
}
