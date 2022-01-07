
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {scalar_t__ addr; } ;


 int EINVAL ;
 int ENOMEM ;
 int copy_instruction (struct kprobe*) ;
 scalar_t__ probe_is_prohibited_opcode (scalar_t__) ;
 scalar_t__ s390_get_insn_slot (struct kprobe*) ;

int arch_prepare_kprobe(struct kprobe *p)
{
 if ((unsigned long) p->addr & 0x01)
  return -EINVAL;

 if (probe_is_prohibited_opcode(p->addr))
  return -EINVAL;
 if (s390_get_insn_slot(p))
  return -ENOMEM;
 copy_instruction(p);
 return 0;
}
