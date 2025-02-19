
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvmppc_vcpu_e500 {int dummy; } ;
struct TYPE_4__ {unsigned long shadow_epcr; unsigned long shadow_msrp; size_t eplc; size_t epsc; unsigned long ivpr; unsigned long* ivor; unsigned long epr; scalar_t__ oldpir; TYPE_1__* shared; } ;
struct kvm_vcpu {unsigned long vcpu_id; TYPE_2__ arch; } ;
struct TYPE_3__ {unsigned long srr0; unsigned long srr1; unsigned long dar; unsigned long esr; scalar_t__ sprg3; scalar_t__ sprg2; scalar_t__ sprg1; scalar_t__ sprg0; } ;


 size_t BOOKE_IRQPRIO_DATA_STORAGE ;
 size_t BOOKE_IRQPRIO_SYSCALL ;
 size_t EPC_EGS ;
 size_t EPC_ELPID_SHIFT ;
 int SPRN_EPCR ;
 int SPRN_EPLC ;
 int SPRN_EPSC ;
 int SPRN_GDEAR ;
 int SPRN_GEPR ;
 int SPRN_GESR ;
 int SPRN_GIVOR2 ;
 int SPRN_GIVOR8 ;
 int SPRN_GIVPR ;
 int SPRN_GPIR ;
 int SPRN_GSPRG0 ;
 int SPRN_GSPRG1 ;
 int SPRN_GSPRG2 ;
 int SPRN_GSPRG3 ;
 int SPRN_GSRR0 ;
 int SPRN_GSRR1 ;
 int SPRN_LPID ;
 int SPRN_MSRP ;
 int SPRN_PIR ;
 struct kvm_vcpu* __this_cpu_read (int ) ;
 int __this_cpu_write (int ,struct kvm_vcpu*) ;
 size_t get_lpid (struct kvm_vcpu*) ;
 int kvmppc_booke_vcpu_load (struct kvm_vcpu*,int) ;
 int kvmppc_e500_tlbil_all (struct kvmppc_vcpu_e500*) ;
 int * last_vcpu_of_lpid ;
 scalar_t__ mfspr (int ) ;
 int mtspr (int ,unsigned long) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

__attribute__((used)) static void kvmppc_core_vcpu_load_e500mc(struct kvm_vcpu *vcpu, int cpu)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);

 kvmppc_booke_vcpu_load(vcpu, cpu);

 mtspr(SPRN_LPID, get_lpid(vcpu));
 mtspr(SPRN_EPCR, vcpu->arch.shadow_epcr);
 mtspr(SPRN_GPIR, vcpu->vcpu_id);
 mtspr(SPRN_MSRP, vcpu->arch.shadow_msrp);
 vcpu->arch.eplc = EPC_EGS | (get_lpid(vcpu) << EPC_ELPID_SHIFT);
 vcpu->arch.epsc = vcpu->arch.eplc;
 mtspr(SPRN_EPLC, vcpu->arch.eplc);
 mtspr(SPRN_EPSC, vcpu->arch.epsc);

 mtspr(SPRN_GIVPR, vcpu->arch.ivpr);
 mtspr(SPRN_GIVOR2, vcpu->arch.ivor[BOOKE_IRQPRIO_DATA_STORAGE]);
 mtspr(SPRN_GIVOR8, vcpu->arch.ivor[BOOKE_IRQPRIO_SYSCALL]);
 mtspr(SPRN_GSPRG0, (unsigned long)vcpu->arch.shared->sprg0);
 mtspr(SPRN_GSPRG1, (unsigned long)vcpu->arch.shared->sprg1);
 mtspr(SPRN_GSPRG2, (unsigned long)vcpu->arch.shared->sprg2);
 mtspr(SPRN_GSPRG3, (unsigned long)vcpu->arch.shared->sprg3);

 mtspr(SPRN_GSRR0, vcpu->arch.shared->srr0);
 mtspr(SPRN_GSRR1, vcpu->arch.shared->srr1);

 mtspr(SPRN_GEPR, vcpu->arch.epr);
 mtspr(SPRN_GDEAR, vcpu->arch.shared->dar);
 mtspr(SPRN_GESR, vcpu->arch.shared->esr);

 if (vcpu->arch.oldpir != mfspr(SPRN_PIR) ||
     __this_cpu_read(last_vcpu_of_lpid[get_lpid(vcpu)]) != vcpu) {
  kvmppc_e500_tlbil_all(vcpu_e500);
  __this_cpu_write(last_vcpu_of_lpid[get_lpid(vcpu)], vcpu);
 }
}
