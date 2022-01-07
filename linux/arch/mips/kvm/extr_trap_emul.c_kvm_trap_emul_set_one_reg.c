
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_one_reg {int id; } ;
typedef unsigned int s64 ;


 unsigned int CAUSEF_DC ;
 int EINVAL ;
 int MIPS_EBASE_CPUNUM ;
 int kvm_change_c0_guest_cause (struct mips_coproc*,int ,unsigned int) ;
 int kvm_change_c0_guest_ebase (struct mips_coproc*,int,unsigned int) ;
 unsigned int kvm_mips_config1_wrmask (struct kvm_vcpu*) ;
 unsigned int kvm_mips_config3_wrmask (struct kvm_vcpu*) ;
 unsigned int kvm_mips_config4_wrmask (struct kvm_vcpu*) ;
 unsigned int kvm_mips_config5_wrmask (struct kvm_vcpu*) ;
 int kvm_mips_count_disable_cause (struct kvm_vcpu*) ;
 int kvm_mips_count_enable_cause (struct kvm_vcpu*) ;
 int kvm_mips_set_count_ctl (struct kvm_vcpu*,unsigned int) ;
 int kvm_mips_set_count_hz (struct kvm_vcpu*,unsigned int) ;
 int kvm_mips_set_count_resume (struct kvm_vcpu*,unsigned int) ;
 int kvm_mips_write_compare (struct kvm_vcpu*,unsigned int,int) ;
 int kvm_mips_write_count (struct kvm_vcpu*,unsigned int) ;
 unsigned int kvm_read_c0_guest_cause (struct mips_coproc*) ;
 unsigned int kvm_read_c0_guest_config1 (struct mips_coproc*) ;
 unsigned int kvm_read_c0_guest_config3 (struct mips_coproc*) ;
 unsigned int kvm_read_c0_guest_config4 (struct mips_coproc*) ;
 unsigned int kvm_read_c0_guest_config5 (struct mips_coproc*) ;
 int kvm_write_c0_guest_badvaddr (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_cause (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_config1 (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_config3 (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_config4 (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_config5 (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_context (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_entryhi (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_entrylo0 (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_entrylo1 (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_epc (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_errorepc (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_hwrena (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_index (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_kscratch1 (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_kscratch2 (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_kscratch3 (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_kscratch4 (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_kscratch5 (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_kscratch6 (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_pagemask (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_prid (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_status (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_userlocal (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_wired (struct mips_coproc*,unsigned int) ;

__attribute__((used)) static int kvm_trap_emul_set_one_reg(struct kvm_vcpu *vcpu,
         const struct kvm_one_reg *reg,
         s64 v)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 int ret = 0;
 unsigned int cur, change;

 switch (reg->id) {
 case 140:
  kvm_write_c0_guest_index(cop0, v);
  break;
 case 145:
  kvm_write_c0_guest_entrylo0(cop0, v);
  break;
 case 144:
  kvm_write_c0_guest_entrylo1(cop0, v);
  break;
 case 149:
  kvm_write_c0_guest_context(cop0, v);
  break;
 case 129:
  kvm_write_c0_guest_userlocal(cop0, v);
  break;
 case 132:
  kvm_write_c0_guest_pagemask(cop0, v);
  break;
 case 128:
  kvm_write_c0_guest_wired(cop0, v);
  break;
 case 141:
  kvm_write_c0_guest_hwrena(cop0, v);
  break;
 case 159:
  kvm_write_c0_guest_badvaddr(cop0, v);
  break;
 case 146:
  kvm_write_c0_guest_entryhi(cop0, v);
  break;
 case 130:
  kvm_write_c0_guest_status(cop0, v);
  break;
 case 139:

  break;
 case 143:
  kvm_write_c0_guest_epc(cop0, v);
  break;
 case 131:
  kvm_write_c0_guest_prid(cop0, v);
  break;
 case 147:




  kvm_change_c0_guest_ebase(cop0, 0x1ffff000 | MIPS_EBASE_CPUNUM,
       v);
  break;
 case 148:
  kvm_mips_write_count(vcpu, v);
  break;
 case 157:
  kvm_mips_write_compare(vcpu, v, 0);
  break;
 case 158:





  if ((kvm_read_c0_guest_cause(cop0) ^ v) & CAUSEF_DC) {
   if (v & CAUSEF_DC) {

    kvm_mips_count_disable_cause(vcpu);
    kvm_change_c0_guest_cause(cop0, (u32)~CAUSEF_DC,
         v);
   } else {

    kvm_change_c0_guest_cause(cop0, (u32)~CAUSEF_DC,
         v);
    kvm_mips_count_enable_cause(vcpu);
   }
  } else {
   kvm_write_c0_guest_cause(cop0, v);
  }
  break;
 case 156:

  break;
 case 155:
  cur = kvm_read_c0_guest_config1(cop0);
  change = (cur ^ v) & kvm_mips_config1_wrmask(vcpu);
  if (change) {
   v = cur ^ change;
   kvm_write_c0_guest_config1(cop0, v);
  }
  break;
 case 154:

  break;
 case 153:
  cur = kvm_read_c0_guest_config3(cop0);
  change = (cur ^ v) & kvm_mips_config3_wrmask(vcpu);
  if (change) {
   v = cur ^ change;
   kvm_write_c0_guest_config3(cop0, v);
  }
  break;
 case 152:
  cur = kvm_read_c0_guest_config4(cop0);
  change = (cur ^ v) & kvm_mips_config4_wrmask(vcpu);
  if (change) {
   v = cur ^ change;
   kvm_write_c0_guest_config4(cop0, v);
  }
  break;
 case 151:
  cur = kvm_read_c0_guest_config5(cop0);
  change = (cur ^ v) & kvm_mips_config5_wrmask(vcpu);
  if (change) {
   v = cur ^ change;
   kvm_write_c0_guest_config5(cop0, v);
  }
  break;
 case 150:

  break;
 case 162:
  ret = kvm_mips_set_count_ctl(vcpu, v);
  break;
 case 160:
  ret = kvm_mips_set_count_resume(vcpu, v);
  break;
 case 161:
  ret = kvm_mips_set_count_hz(vcpu, v);
  break;
 case 142:
  kvm_write_c0_guest_errorepc(cop0, v);
  break;
 case 138:
  kvm_write_c0_guest_kscratch1(cop0, v);
  break;
 case 137:
  kvm_write_c0_guest_kscratch2(cop0, v);
  break;
 case 136:
  kvm_write_c0_guest_kscratch3(cop0, v);
  break;
 case 135:
  kvm_write_c0_guest_kscratch4(cop0, v);
  break;
 case 134:
  kvm_write_c0_guest_kscratch5(cop0, v);
  break;
 case 133:
  kvm_write_c0_guest_kscratch6(cop0, v);
  break;
 default:
  return -EINVAL;
 }
 return ret;
}
