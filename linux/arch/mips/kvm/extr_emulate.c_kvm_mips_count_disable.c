
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {int comparecount_timer; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int ktime_t ;


 int hrtimer_cancel (int *) ;
 int ktime_get () ;
 int kvm_mips_read_count_running (struct kvm_vcpu*,int ) ;
 int kvm_write_c0_guest_count (struct mips_coproc*,int ) ;

__attribute__((used)) static ktime_t kvm_mips_count_disable(struct kvm_vcpu *vcpu)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 u32 count;
 ktime_t now;


 hrtimer_cancel(&vcpu->arch.comparecount_timer);


 now = ktime_get();
 count = kvm_mips_read_count_running(vcpu, now);
 kvm_write_c0_guest_count(cop0, count);

 return now;
}
