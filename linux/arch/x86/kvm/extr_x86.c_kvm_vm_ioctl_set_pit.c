
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_pit_state {TYPE_1__* channels; } ;
struct TYPE_6__ {int lock; int channels; } ;
struct kvm_pit {TYPE_3__ pit_state; } ;
struct TYPE_5__ {struct kvm_pit* vpit; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_4__ {int count; } ;


 int kvm_pit_load_count (struct kvm_pit*,int,int ,int ) ;
 int memcpy (int *,struct kvm_pit_state*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvm_vm_ioctl_set_pit(struct kvm *kvm, struct kvm_pit_state *ps)
{
 int i;
 struct kvm_pit *pit = kvm->arch.vpit;

 mutex_lock(&pit->pit_state.lock);
 memcpy(&pit->pit_state.channels, ps, sizeof(*ps));
 for (i = 0; i < 3; i++)
  kvm_pit_load_count(pit, i, ps->channels[i].count, 0);
 mutex_unlock(&pit->pit_state.lock);
 return 0;
}
