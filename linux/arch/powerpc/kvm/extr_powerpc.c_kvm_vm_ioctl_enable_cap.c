
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_enable_cap {int cap; unsigned long* args; scalar_t__ flags; } ;
struct TYPE_4__ {TYPE_1__* kvm_ops; int enabled_hcalls; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_3__ {int (* set_smt_mode ) (struct kvm*,unsigned long,unsigned long) ;int (* enable_nested ) (struct kvm*) ;} ;


 int EINVAL ;



 unsigned long MAX_HCALL_OPCODE ;
 int clear_bit (unsigned long,int ) ;
 int is_kvmppc_hv_enabled (struct kvm*) ;
 int kvmppc_book3s_hcall_implemented (struct kvm*,unsigned long) ;
 int set_bit (unsigned long,int ) ;
 int stub1 (struct kvm*,unsigned long,unsigned long) ;
 int stub2 (struct kvm*) ;

int kvm_vm_ioctl_enable_cap(struct kvm *kvm,
       struct kvm_enable_cap *cap)
{
 int r;

 if (cap->flags)
  return -EINVAL;

 switch (cap->cap) {
 default:
  r = -EINVAL;
  break;
 }

 return r;
}
