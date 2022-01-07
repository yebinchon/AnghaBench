
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {int pc; struct mips_coproc* cop0; } ;
struct kvm_vcpu {int vcpu_id; TYPE_1__ arch; } ;


 int CONF_BE ;
 int CONF_CM_CACHABLE_NONCOHERENT ;
 int KVM_GUEST_CKSEG1ADDR (int) ;
 int KVM_GUEST_KSEG0 ;
 int KVM_MIPS_GUEST_TLB_SIZE ;
 int MIPS_CONF1_C2 ;
 int MIPS_CONF1_CA ;
 int MIPS_CONF1_DL ;
 int MIPS_CONF1_DL_SHF ;
 int MIPS_CONF1_MD ;
 int MIPS_CONF1_PC ;
 int MIPS_CONF1_WR ;
 int MIPS_CONF3_ULRI ;
 int MIPS_CONF7_WII ;
 int MIPS_CONF_AR ;
 int MIPS_CONF_M ;
 int MIPS_CONF_MT_TLB ;
 int MIPS_CONF_VI ;
 int MIPS_EBASE_CPUNUM ;
 int ST0_BEV ;
 int ST0_ERL ;
 scalar_t__ cpu_dcache_line_size () ;
 scalar_t__ cpu_has_vtag_icache ;
 int ilog2 (scalar_t__) ;
 int kvm_mips_init_count (struct kvm_vcpu*,int) ;
 int kvm_write_c0_guest_config (struct mips_coproc*,int) ;
 int kvm_write_c0_guest_config1 (struct mips_coproc*,int) ;
 int kvm_write_c0_guest_config2 (struct mips_coproc*,int) ;
 int kvm_write_c0_guest_config3 (struct mips_coproc*,int) ;
 int kvm_write_c0_guest_config4 (struct mips_coproc*,int) ;
 int kvm_write_c0_guest_config5 (struct mips_coproc*,int ) ;
 int kvm_write_c0_guest_config7 (struct mips_coproc*,int) ;
 int kvm_write_c0_guest_ebase (struct mips_coproc*,int) ;
 int kvm_write_c0_guest_intctl (struct mips_coproc*,int) ;
 int kvm_write_c0_guest_prid (struct mips_coproc*,int) ;
 int kvm_write_c0_guest_status (struct mips_coproc*,int) ;
 int read_c0_config () ;
 int read_c0_config1 () ;

__attribute__((used)) static int kvm_trap_emul_vcpu_setup(struct kvm_vcpu *vcpu)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 u32 config, config1;
 int vcpu_id = vcpu->vcpu_id;


 kvm_mips_init_count(vcpu, 100*1000*1000);







 kvm_write_c0_guest_prid(cop0, 0x00019300);
 config = read_c0_config() & MIPS_CONF_AR;
 config |= MIPS_CONF_M | CONF_CM_CACHABLE_NONCOHERENT | MIPS_CONF_MT_TLB;



 if (cpu_has_vtag_icache)
  config |= MIPS_CONF_VI;
 kvm_write_c0_guest_config(cop0, config);


 config1 = (read_c0_config1() & ~0x7f);


 if (cpu_dcache_line_size()) {
  config1 &= ~MIPS_CONF1_DL;
  config1 |= ((ilog2(cpu_dcache_line_size()) - 1) <<
       MIPS_CONF1_DL_SHF) & MIPS_CONF1_DL;
 }


 config1 &= ~(0x3f << 25);
 config1 |= ((KVM_MIPS_GUEST_TLB_SIZE - 1) << 25);


 config1 &= ~(MIPS_CONF1_C2 | MIPS_CONF1_MD | MIPS_CONF1_PC |
       MIPS_CONF1_WR | MIPS_CONF1_CA);
 kvm_write_c0_guest_config1(cop0, config1);


 kvm_write_c0_guest_config2(cop0, MIPS_CONF_M);



 kvm_write_c0_guest_config3(cop0, MIPS_CONF_M | MIPS_CONF3_ULRI);


 kvm_write_c0_guest_config4(cop0, MIPS_CONF_M);


 kvm_write_c0_guest_config5(cop0, 0);


 kvm_write_c0_guest_config7(cop0, (MIPS_CONF7_WII) | (1 << 10));


 kvm_write_c0_guest_status(cop0, ST0_BEV | ST0_ERL);




 kvm_write_c0_guest_intctl(cop0, 0xFC000000);


 kvm_write_c0_guest_ebase(cop0, KVM_GUEST_KSEG0 |
           (vcpu_id & MIPS_EBASE_CPUNUM));


 vcpu->arch.pc = KVM_GUEST_CKSEG1ADDR(0x1fc00000);

 return 0;
}
