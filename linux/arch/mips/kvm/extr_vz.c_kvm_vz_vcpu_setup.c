
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mips_coproc {scalar_t__** reg; } ;
struct TYPE_3__ {int pc; struct mips_coproc* cop0; } ;
struct kvm_vcpu {int vcpu_id; TYPE_1__ arch; } ;
typedef int s32 ;
struct TYPE_4__ {int processor_id; } ;


 int CKSEG1ADDR (int) ;
 int CONF_CM_CMASK ;
 int INTCTLF_IPFDC ;
 int INTCTLF_IPPCI ;
 int INTCTLF_IPTI ;
 int MIPSR6_WIRED_LIMIT ;
 int MIPS_CONF1_C2 ;
 int MIPS_CONF1_CA ;
 int MIPS_CONF1_FP ;
 int MIPS_CONF1_MD ;
 int MIPS_CONF1_PC ;
 int MIPS_CONF1_WR ;
 int MIPS_CONF3_BPG ;
 int MIPS_CONF3_CDMM ;
 int MIPS_CONF3_CTXTC ;
 int MIPS_CONF3_DSP ;
 int MIPS_CONF3_ISA_OE ;
 int MIPS_CONF3_ITL ;
 int MIPS_CONF3_LPA ;
 int MIPS_CONF3_MSA ;
 int MIPS_CONF3_MT ;
 int MIPS_CONF3_SM ;
 int MIPS_CONF3_SP ;
 int MIPS_CONF3_TL ;
 int MIPS_CONF3_ULRI ;
 int MIPS_CONF3_VEIC ;
 int MIPS_CONF3_VINT ;
 int MIPS_CONF5_CV ;
 int MIPS_CONF5_FRE ;
 int MIPS_CONF5_K ;
 int MIPS_CONF5_MRP ;
 int MIPS_CONF5_MSAEN ;
 int MIPS_CONF5_SBRI ;
 int MIPS_CONF5_UFE ;
 int MIPS_CONF5_UFR ;
 int MIPS_CONF_M ;
 int MIPS_CONF_MT ;
 size_t MIPS_CP0_GUESTCTL2 ;
 size_t MIPS_CP0_GUESTCTL2_SEL ;
 int MIPS_PWSIZE_PTW_SHIFT ;
 int MIPS_SEGCFG_C_SHIFT ;
 unsigned long NSEC_PER_SEC ;
 int PG_IEC ;
 int PG_RIE ;
 int PG_XIE ;
 int ST0_BEV ;
 int ST0_ERL ;
 int ST0_FR ;
 int _CACHE_SHIFT ;
 int _page_cachable_default ;
 TYPE_2__ boot_cpu_data ;
 scalar_t__ cpu_guest_has_conf1 ;
 scalar_t__ cpu_guest_has_conf2 ;
 scalar_t__ cpu_guest_has_conf3 ;
 scalar_t__ cpu_guest_has_conf4 ;
 scalar_t__ cpu_guest_has_conf5 ;
 scalar_t__ cpu_guest_has_contextconfig ;
 scalar_t__ cpu_guest_has_htw ;
 scalar_t__ cpu_guest_has_segments ;
 scalar_t__ cpu_has_guestctl2 ;
 scalar_t__ cpu_has_mips_r6 ;
 int cpu_vmbits ;
 int kvm_change_sw_gc0_config (struct mips_coproc*,int ,int) ;
 int kvm_change_sw_gc0_status (struct mips_coproc*,int ,int ) ;
 int kvm_clear_sw_gc0_config1 (struct mips_coproc*,int) ;
 int kvm_clear_sw_gc0_config3 (struct mips_coproc*,int) ;
 int kvm_clear_sw_gc0_config5 (struct mips_coproc*,int) ;
 int kvm_mips_init_count (struct kvm_vcpu*,unsigned long) ;
 int kvm_save_gc0_config (struct mips_coproc*) ;
 int kvm_save_gc0_config1 (struct mips_coproc*) ;
 int kvm_save_gc0_config2 (struct mips_coproc*) ;
 int kvm_save_gc0_config3 (struct mips_coproc*) ;
 int kvm_save_gc0_config4 (struct mips_coproc*) ;
 int kvm_save_gc0_config5 (struct mips_coproc*) ;
 int kvm_set_sw_gc0_config (struct mips_coproc*,int ) ;
 int kvm_set_sw_gc0_config1 (struct mips_coproc*,int ) ;
 int kvm_set_sw_gc0_config2 (struct mips_coproc*,int ) ;
 int kvm_set_sw_gc0_config3 (struct mips_coproc*,int ) ;
 int kvm_set_sw_gc0_config4 (struct mips_coproc*,int ) ;
 int kvm_write_sw_gc0_contextconfig (struct mips_coproc*,int) ;
 int kvm_write_sw_gc0_ebase (struct mips_coproc*,int) ;
 int kvm_write_sw_gc0_intctl (struct mips_coproc*,int) ;
 int kvm_write_sw_gc0_pagegrain (struct mips_coproc*,int) ;
 int kvm_write_sw_gc0_prid (struct mips_coproc*,int ) ;
 int kvm_write_sw_gc0_pwfield (struct mips_coproc*,int) ;
 int kvm_write_sw_gc0_pwsize (struct mips_coproc*,int) ;
 int kvm_write_sw_gc0_segctl0 (struct mips_coproc*,int) ;
 int kvm_write_sw_gc0_segctl1 (struct mips_coproc*,int) ;
 int kvm_write_sw_gc0_segctl2 (struct mips_coproc*,int) ;
 int kvm_write_sw_gc0_status (struct mips_coproc*,int) ;
 int kvm_write_sw_gc0_wired (struct mips_coproc*,int) ;
 int kvm_write_sw_gc0_xcontextconfig (struct mips_coproc*,unsigned long long) ;
 unsigned long mips_hpt_frequency ;
 int read_c0_config () ;
 int read_gc0_intctl () ;
 int read_gc0_status () ;
 int read_gc0_wired () ;

__attribute__((used)) static int kvm_vz_vcpu_setup(struct kvm_vcpu *vcpu)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 unsigned long count_hz = 100*1000*1000;





 if (mips_hpt_frequency && mips_hpt_frequency <= NSEC_PER_SEC)
  count_hz = mips_hpt_frequency;
 kvm_mips_init_count(vcpu, count_hz);






 if (cpu_has_mips_r6)
  kvm_write_sw_gc0_pagegrain(cop0, PG_RIE | PG_XIE | PG_IEC);

 if (cpu_has_mips_r6)
  kvm_write_sw_gc0_wired(cop0,
           read_gc0_wired() & MIPSR6_WIRED_LIMIT);

 kvm_write_sw_gc0_status(cop0, ST0_BEV | ST0_ERL);
 if (cpu_has_mips_r6)
  kvm_change_sw_gc0_status(cop0, ST0_FR, read_gc0_status());

 kvm_write_sw_gc0_intctl(cop0, read_gc0_intctl() &
    (INTCTLF_IPFDC | INTCTLF_IPPCI | INTCTLF_IPTI));

 kvm_write_sw_gc0_prid(cop0, boot_cpu_data.processor_id);

 kvm_write_sw_gc0_ebase(cop0, (s32)0x80000000 | vcpu->vcpu_id);

 kvm_save_gc0_config(cop0);

 kvm_change_sw_gc0_config(cop0, CONF_CM_CMASK,
     _page_cachable_default >> _CACHE_SHIFT);

 kvm_change_sw_gc0_config(cop0, MIPS_CONF_MT, read_c0_config());
 if (cpu_guest_has_conf1) {
  kvm_set_sw_gc0_config(cop0, MIPS_CONF_M);

  kvm_save_gc0_config1(cop0);

  kvm_clear_sw_gc0_config1(cop0, MIPS_CONF1_C2 |
            MIPS_CONF1_MD |
            MIPS_CONF1_PC |
            MIPS_CONF1_WR |
            MIPS_CONF1_CA |
            MIPS_CONF1_FP);
 }
 if (cpu_guest_has_conf2) {
  kvm_set_sw_gc0_config1(cop0, MIPS_CONF_M);

  kvm_save_gc0_config2(cop0);
 }
 if (cpu_guest_has_conf3) {
  kvm_set_sw_gc0_config2(cop0, MIPS_CONF_M);

  kvm_save_gc0_config3(cop0);

  kvm_clear_sw_gc0_config3(cop0, MIPS_CONF3_ISA_OE);

  kvm_clear_sw_gc0_config3(cop0, MIPS_CONF3_MSA |
            MIPS_CONF3_BPG |
            MIPS_CONF3_ULRI |
            MIPS_CONF3_DSP |
            MIPS_CONF3_CTXTC |
            MIPS_CONF3_ITL |
            MIPS_CONF3_LPA |
            MIPS_CONF3_VEIC |
            MIPS_CONF3_VINT |
            MIPS_CONF3_SP |
            MIPS_CONF3_CDMM |
            MIPS_CONF3_MT |
            MIPS_CONF3_SM |
            MIPS_CONF3_TL);
 }
 if (cpu_guest_has_conf4) {
  kvm_set_sw_gc0_config3(cop0, MIPS_CONF_M);

  kvm_save_gc0_config4(cop0);
 }
 if (cpu_guest_has_conf5) {
  kvm_set_sw_gc0_config4(cop0, MIPS_CONF_M);

  kvm_save_gc0_config5(cop0);

  kvm_clear_sw_gc0_config5(cop0, MIPS_CONF5_K |
            MIPS_CONF5_CV |
            MIPS_CONF5_MSAEN |
            MIPS_CONF5_UFE |
            MIPS_CONF5_FRE |
            MIPS_CONF5_SBRI |
            MIPS_CONF5_UFR);

  kvm_clear_sw_gc0_config5(cop0, MIPS_CONF5_MRP);
 }

 if (cpu_guest_has_contextconfig) {

  kvm_write_sw_gc0_contextconfig(cop0, 0x007ffff0);






 }


 if (cpu_guest_has_segments) {

  kvm_write_sw_gc0_segctl0(cop0, 0x00200010);
  kvm_write_sw_gc0_segctl1(cop0, 0x00000002 |
    (_page_cachable_default >> _CACHE_SHIFT) <<
      (16 + MIPS_SEGCFG_C_SHIFT));
  kvm_write_sw_gc0_segctl2(cop0, 0x00380438);
 }


 if (cpu_guest_has_htw && cpu_has_mips_r6) {

  kvm_write_sw_gc0_pwfield(cop0, 0x0c30c302);

  kvm_write_sw_gc0_pwsize(cop0, 1 << MIPS_PWSIZE_PTW_SHIFT);
 }


 if (cpu_has_guestctl2)
  cop0->reg[MIPS_CP0_GUESTCTL2][MIPS_CP0_GUESTCTL2_SEL] = 0;


 vcpu->arch.pc = CKSEG1ADDR(0x1fc00000);

 return 0;
}
