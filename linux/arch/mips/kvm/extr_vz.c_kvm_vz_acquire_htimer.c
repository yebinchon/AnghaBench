
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int MIPS_GCTL0_GT ;
 int _kvm_vz_restore_htimer (struct kvm_vcpu*,int ,int ) ;
 scalar_t__ kvm_vz_should_use_htimer (struct kvm_vcpu*) ;
 int read_c0_guestctl0 () ;
 int read_gc0_cause () ;
 int read_gc0_compare () ;
 int write_c0_guestctl0 (int) ;

void kvm_vz_acquire_htimer(struct kvm_vcpu *vcpu)
{
 u32 gctl0;

 gctl0 = read_c0_guestctl0();
 if (!(gctl0 & MIPS_GCTL0_GT) && kvm_vz_should_use_htimer(vcpu)) {

  write_c0_guestctl0(gctl0 | MIPS_GCTL0_GT);

  _kvm_vz_restore_htimer(vcpu, read_gc0_compare(),
           read_gc0_cause());
 }
}
