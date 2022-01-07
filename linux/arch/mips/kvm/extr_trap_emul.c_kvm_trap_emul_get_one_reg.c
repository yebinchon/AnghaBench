
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mips_coproc {int dummy; } ;
struct TYPE_2__ {long count_ctl; long count_hz; int count_resume; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_one_reg {int id; } ;
typedef long s64 ;


 int EINVAL ;
 long ktime_to_ns (int ) ;
 long kvm_mips_read_count (struct kvm_vcpu*) ;
 scalar_t__ kvm_read_c0_guest_badvaddr (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_cause (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_compare (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_config (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_config1 (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_config2 (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_config3 (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_config4 (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_config5 (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_config7 (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_context (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_ebase (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_entryhi (struct mips_coproc*) ;
 long kvm_read_c0_guest_entrylo0 (struct mips_coproc*) ;
 long kvm_read_c0_guest_entrylo1 (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_epc (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_errorepc (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_hwrena (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_index (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_intctl (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_kscratch1 (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_kscratch2 (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_kscratch3 (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_kscratch4 (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_kscratch5 (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_kscratch6 (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_pagemask (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_prid (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_status (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_userlocal (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_wired (struct mips_coproc*) ;

__attribute__((used)) static int kvm_trap_emul_get_one_reg(struct kvm_vcpu *vcpu,
         const struct kvm_one_reg *reg,
         s64 *v)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;

 switch (reg->id) {
 case 140:
  *v = (long)kvm_read_c0_guest_index(cop0);
  break;
 case 145:
  *v = kvm_read_c0_guest_entrylo0(cop0);
  break;
 case 144:
  *v = kvm_read_c0_guest_entrylo1(cop0);
  break;
 case 149:
  *v = (long)kvm_read_c0_guest_context(cop0);
  break;
 case 129:
  *v = (long)kvm_read_c0_guest_userlocal(cop0);
  break;
 case 132:
  *v = (long)kvm_read_c0_guest_pagemask(cop0);
  break;
 case 128:
  *v = (long)kvm_read_c0_guest_wired(cop0);
  break;
 case 141:
  *v = (long)kvm_read_c0_guest_hwrena(cop0);
  break;
 case 159:
  *v = (long)kvm_read_c0_guest_badvaddr(cop0);
  break;
 case 146:
  *v = (long)kvm_read_c0_guest_entryhi(cop0);
  break;
 case 157:
  *v = (long)kvm_read_c0_guest_compare(cop0);
  break;
 case 130:
  *v = (long)kvm_read_c0_guest_status(cop0);
  break;
 case 139:
  *v = (long)kvm_read_c0_guest_intctl(cop0);
  break;
 case 158:
  *v = (long)kvm_read_c0_guest_cause(cop0);
  break;
 case 143:
  *v = (long)kvm_read_c0_guest_epc(cop0);
  break;
 case 131:
  *v = (long)kvm_read_c0_guest_prid(cop0);
  break;
 case 147:
  *v = (long)kvm_read_c0_guest_ebase(cop0);
  break;
 case 156:
  *v = (long)kvm_read_c0_guest_config(cop0);
  break;
 case 155:
  *v = (long)kvm_read_c0_guest_config1(cop0);
  break;
 case 154:
  *v = (long)kvm_read_c0_guest_config2(cop0);
  break;
 case 153:
  *v = (long)kvm_read_c0_guest_config3(cop0);
  break;
 case 152:
  *v = (long)kvm_read_c0_guest_config4(cop0);
  break;
 case 151:
  *v = (long)kvm_read_c0_guest_config5(cop0);
  break;
 case 150:
  *v = (long)kvm_read_c0_guest_config7(cop0);
  break;
 case 148:
  *v = kvm_mips_read_count(vcpu);
  break;
 case 162:
  *v = vcpu->arch.count_ctl;
  break;
 case 160:
  *v = ktime_to_ns(vcpu->arch.count_resume);
  break;
 case 161:
  *v = vcpu->arch.count_hz;
  break;
 case 142:
  *v = (long)kvm_read_c0_guest_errorepc(cop0);
  break;
 case 138:
  *v = (long)kvm_read_c0_guest_kscratch1(cop0);
  break;
 case 137:
  *v = (long)kvm_read_c0_guest_kscratch2(cop0);
  break;
 case 136:
  *v = (long)kvm_read_c0_guest_kscratch3(cop0);
  break;
 case 135:
  *v = (long)kvm_read_c0_guest_kscratch4(cop0);
  break;
 case 134:
  *v = (long)kvm_read_c0_guest_kscratch5(cop0);
  break;
 case 133:
  *v = (long)kvm_read_c0_guest_kscratch6(cop0);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
