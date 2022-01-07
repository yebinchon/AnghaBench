
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_pit_state {int dummy; } ;
struct kvm_kpit_state {int lock; int channels; } ;
struct TYPE_4__ {TYPE_1__* vpit; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_3__ {struct kvm_kpit_state pit_state; } ;


 int BUILD_BUG_ON (int) ;
 int memcpy (struct kvm_pit_state*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvm_vm_ioctl_get_pit(struct kvm *kvm, struct kvm_pit_state *ps)
{
 struct kvm_kpit_state *kps = &kvm->arch.vpit->pit_state;

 BUILD_BUG_ON(sizeof(*ps) != sizeof(kps->channels));

 mutex_lock(&kps->lock);
 memcpy(ps, &kps->channels, sizeof(*ps));
 mutex_unlock(&kps->lock);
 return 0;
}
