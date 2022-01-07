
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_msr_entry {int index; int data; } ;
struct TYPE_2__ {int (* get_msr_feature ) (struct kvm_msr_entry*) ;} ;




 int kvm_get_arch_capabilities () ;
 TYPE_1__* kvm_x86_ops ;
 int rdmsrl_safe (int,int *) ;
 int stub1 (struct kvm_msr_entry*) ;

__attribute__((used)) static int kvm_get_msr_feature(struct kvm_msr_entry *msr)
{
 switch (msr->index) {
 case 129:
  msr->data = kvm_get_arch_capabilities();
  break;
 case 128:
  rdmsrl_safe(msr->index, &msr->data);
  break;
 default:
  if (kvm_x86_ops->get_msr_feature(msr))
   return 1;
 }
 return 0;
}
