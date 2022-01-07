
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_pit_state2 {int reserved; int flags; int channels; } ;
struct TYPE_6__ {TYPE_2__* vpit; } ;
struct kvm {TYPE_3__ arch; } ;
struct TYPE_4__ {int lock; int flags; int channels; } ;
struct TYPE_5__ {TYPE_1__ pit_state; } ;


 int memcpy (int ,int *,int) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvm_vm_ioctl_get_pit2(struct kvm *kvm, struct kvm_pit_state2 *ps)
{
 mutex_lock(&kvm->arch.vpit->pit_state.lock);
 memcpy(ps->channels, &kvm->arch.vpit->pit_state.channels,
  sizeof(ps->channels));
 ps->flags = kvm->arch.vpit->pit_state.flags;
 mutex_unlock(&kvm->arch.vpit->pit_state.lock);
 memset(&ps->reserved, 0, sizeof(ps->reserved));
 return 0;
}
