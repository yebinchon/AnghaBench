
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_reinject_control {int pit_reinject; } ;
struct TYPE_4__ {int lock; } ;
struct kvm_pit {TYPE_2__ pit_state; } ;
struct TYPE_3__ {struct kvm_pit* vpit; } ;
struct kvm {TYPE_1__ arch; } ;


 int ENXIO ;
 int kvm_pit_set_reinject (struct kvm_pit*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvm_vm_ioctl_reinject(struct kvm *kvm,
     struct kvm_reinject_control *control)
{
 struct kvm_pit *pit = kvm->arch.vpit;

 if (!pit)
  return -ENXIO;





 mutex_lock(&pit->pit_state.lock);
 kvm_pit_set_reinject(pit, control->pit_reinject);
 mutex_unlock(&pit->pit_state.lock);

 return 0;
}
