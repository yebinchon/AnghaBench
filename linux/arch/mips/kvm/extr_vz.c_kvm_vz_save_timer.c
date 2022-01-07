
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int MIPS_GCTL0_GT ;
 int _kvm_vz_save_htimer (struct kvm_vcpu*,int*,int*) ;
 int kvm_write_sw_gc0_cause (struct mips_coproc*,int) ;
 int kvm_write_sw_gc0_compare (struct mips_coproc*,int) ;
 int read_c0_guestctl0 () ;
 int read_gc0_cause () ;
 int read_gc0_compare () ;
 int write_c0_guestctl0 (int) ;

__attribute__((used)) static void kvm_vz_save_timer(struct kvm_vcpu *vcpu)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 u32 gctl0, compare, cause;

 gctl0 = read_c0_guestctl0();
 if (gctl0 & MIPS_GCTL0_GT) {

  write_c0_guestctl0(gctl0 & ~MIPS_GCTL0_GT);


  _kvm_vz_save_htimer(vcpu, &compare, &cause);
 } else {
  compare = read_gc0_compare();
  cause = read_gc0_cause();
 }


 kvm_write_sw_gc0_cause(cop0, cause);
 kvm_write_sw_gc0_compare(cop0, compare);
}
