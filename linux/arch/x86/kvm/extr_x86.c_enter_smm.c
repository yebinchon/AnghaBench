
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int smbase; int cr0; int hflags; } ;
struct kvm_vcpu {TYPE_1__ arch; int vcpu_id; } ;
struct kvm_segment {int selector; int base; int limit; int type; int s; int g; int present; scalar_t__ padding; scalar_t__ unusable; scalar_t__ avl; scalar_t__ l; scalar_t__ db; scalar_t__ dpl; } ;
struct desc_ptr {scalar_t__ size; scalar_t__ address; } ;
typedef int buf ;
struct TYPE_4__ {int (* set_efer ) (struct kvm_vcpu*,int ) ;int (* set_idt ) (struct kvm_vcpu*,struct desc_ptr*) ;int (* set_cr4 ) (struct kvm_vcpu*,int ) ;int (* set_cr0 ) (struct kvm_vcpu*,int) ;int (* set_nmi_mask ) (struct kvm_vcpu*,int) ;scalar_t__ (* get_nmi_mask ) (struct kvm_vcpu*) ;int (* pre_enter_smm ) (struct kvm_vcpu*,char*) ;} ;


 int DR7_FIXED_1 ;
 int HF_SMM_INSIDE_NMI_MASK ;
 int HF_SMM_MASK ;
 int VCPU_SREG_CS ;
 int VCPU_SREG_DS ;
 int VCPU_SREG_ES ;
 int VCPU_SREG_FS ;
 int VCPU_SREG_GS ;
 int VCPU_SREG_SS ;
 int X86_CR0_EM ;
 int X86_CR0_PE ;
 int X86_CR0_PG ;
 int X86_CR0_TS ;
 int X86_EFLAGS_FIXED ;
 int X86_FEATURE_LM ;
 int __kvm_set_dr (struct kvm_vcpu*,int,int ) ;
 int enter_smm_save_state_32 (struct kvm_vcpu*,char*) ;
 int enter_smm_save_state_64 (struct kvm_vcpu*,char*) ;
 scalar_t__ guest_cpuid_has (struct kvm_vcpu*,int ) ;
 int kvm_mmu_reset_context (struct kvm_vcpu*) ;
 int kvm_rip_write (struct kvm_vcpu*,int) ;
 int kvm_set_rflags (struct kvm_vcpu*,int ) ;
 int kvm_set_segment (struct kvm_vcpu*,struct kvm_segment*,int ) ;
 int kvm_update_cpuid (struct kvm_vcpu*) ;
 int kvm_vcpu_write_guest (struct kvm_vcpu*,int,char*,int) ;
 TYPE_2__* kvm_x86_ops ;
 int memset (char*,int ,int) ;
 int stub1 (struct kvm_vcpu*,char*) ;
 scalar_t__ stub2 (struct kvm_vcpu*) ;
 int stub3 (struct kvm_vcpu*,int) ;
 int stub4 (struct kvm_vcpu*,int) ;
 int stub5 (struct kvm_vcpu*,int ) ;
 int stub6 (struct kvm_vcpu*,struct desc_ptr*) ;
 int stub7 (struct kvm_vcpu*,int ) ;
 int trace_kvm_enter_smm (int ,int,int) ;

__attribute__((used)) static void enter_smm(struct kvm_vcpu *vcpu)
{
 struct kvm_segment cs, ds;
 struct desc_ptr dt;
 char buf[512];
 u32 cr0;

 trace_kvm_enter_smm(vcpu->vcpu_id, vcpu->arch.smbase, 1);
 memset(buf, 0, 512);





  enter_smm_save_state_32(vcpu, buf);






 kvm_x86_ops->pre_enter_smm(vcpu, buf);

 vcpu->arch.hflags |= HF_SMM_MASK;
 kvm_vcpu_write_guest(vcpu, vcpu->arch.smbase + 0xfe00, buf, sizeof(buf));

 if (kvm_x86_ops->get_nmi_mask(vcpu))
  vcpu->arch.hflags |= HF_SMM_INSIDE_NMI_MASK;
 else
  kvm_x86_ops->set_nmi_mask(vcpu, 1);

 kvm_set_rflags(vcpu, X86_EFLAGS_FIXED);
 kvm_rip_write(vcpu, 0x8000);

 cr0 = vcpu->arch.cr0 & ~(X86_CR0_PE | X86_CR0_EM | X86_CR0_TS | X86_CR0_PG);
 kvm_x86_ops->set_cr0(vcpu, cr0);
 vcpu->arch.cr0 = cr0;

 kvm_x86_ops->set_cr4(vcpu, 0);


 dt.address = dt.size = 0;
 kvm_x86_ops->set_idt(vcpu, &dt);

 __kvm_set_dr(vcpu, 7, DR7_FIXED_1);

 cs.selector = (vcpu->arch.smbase >> 4) & 0xffff;
 cs.base = vcpu->arch.smbase;

 ds.selector = 0;
 ds.base = 0;

 cs.limit = ds.limit = 0xffffffff;
 cs.type = ds.type = 0x3;
 cs.dpl = ds.dpl = 0;
 cs.db = ds.db = 0;
 cs.s = ds.s = 1;
 cs.l = ds.l = 0;
 cs.g = ds.g = 1;
 cs.avl = ds.avl = 0;
 cs.present = ds.present = 1;
 cs.unusable = ds.unusable = 0;
 cs.padding = ds.padding = 0;

 kvm_set_segment(vcpu, &cs, VCPU_SREG_CS);
 kvm_set_segment(vcpu, &ds, VCPU_SREG_DS);
 kvm_set_segment(vcpu, &ds, VCPU_SREG_ES);
 kvm_set_segment(vcpu, &ds, VCPU_SREG_FS);
 kvm_set_segment(vcpu, &ds, VCPU_SREG_GS);
 kvm_set_segment(vcpu, &ds, VCPU_SREG_SS);






 kvm_update_cpuid(vcpu);
 kvm_mmu_reset_context(vcpu);
}
