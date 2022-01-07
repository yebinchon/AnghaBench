
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_kpit_state {int speaker_data_on; int lock; } ;
struct kvm_pit {struct kvm_kpit_state pit_state; } ;
struct kvm_io_device {int dummy; } ;
typedef scalar_t__ gpa_t ;


 int EOPNOTSUPP ;
 scalar_t__ KVM_SPEAKER_BASE_ADDRESS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pit_set_gate (struct kvm_pit*,int,int) ;
 struct kvm_pit* speaker_to_pit (struct kvm_io_device*) ;

__attribute__((used)) static int speaker_ioport_write(struct kvm_vcpu *vcpu,
    struct kvm_io_device *this,
    gpa_t addr, int len, const void *data)
{
 struct kvm_pit *pit = speaker_to_pit(this);
 struct kvm_kpit_state *pit_state = &pit->pit_state;
 u32 val = *(u32 *) data;
 if (addr != KVM_SPEAKER_BASE_ADDRESS)
  return -EOPNOTSUPP;

 mutex_lock(&pit_state->lock);
 pit_state->speaker_data_on = (val >> 1) & 1;
 pit_set_gate(pit, 2, val & 1);
 mutex_unlock(&pit_state->lock);
 return 0;
}
