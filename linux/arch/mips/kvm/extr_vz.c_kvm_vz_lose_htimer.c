
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int MIPS_GCTL0_GT ;
 int _kvm_vz_restore_stimer (struct kvm_vcpu*,int,int) ;
 int _kvm_vz_save_htimer (struct kvm_vcpu*,int*,int*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int read_c0_guestctl0 () ;
 int write_c0_guestctl0 (int) ;

void kvm_vz_lose_htimer(struct kvm_vcpu *vcpu)
{
 u32 gctl0, compare, cause;

 preempt_disable();
 gctl0 = read_c0_guestctl0();
 if (gctl0 & MIPS_GCTL0_GT) {

  write_c0_guestctl0(gctl0 & ~MIPS_GCTL0_GT);


  _kvm_vz_save_htimer(vcpu, &compare, &cause);


  _kvm_vz_restore_stimer(vcpu, compare, cause);
 }
 preempt_enable();
}
