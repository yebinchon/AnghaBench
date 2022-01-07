
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_frame {scalar_t__* empty1; } ;
struct pt_regs {scalar_t__* gprs; } ;
struct kvm_s390_sie_block {int dummy; } ;



__attribute__((used)) static struct kvm_s390_sie_block *sie_block(struct pt_regs *regs)
{
 struct stack_frame *stack = (struct stack_frame *) regs->gprs[15];

 if (!stack)
  return ((void*)0);

 return (struct kvm_s390_sie_block *) stack->empty1[0];
}
