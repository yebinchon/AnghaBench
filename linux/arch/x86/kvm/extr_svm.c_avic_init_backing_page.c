
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {TYPE_1__* apic; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct vcpu_svm {int * avic_physical_id_cache; int avic_backing_page; TYPE_3__ vcpu; } ;
struct kvm_vcpu {int vcpu_id; } ;
struct TYPE_4__ {int regs; } ;


 int AVIC_MAX_PHYSICAL_ID_COUNT ;
 int AVIC_PHYSICAL_ID_ENTRY_BACKING_PAGE_MASK ;
 int AVIC_PHYSICAL_ID_ENTRY_VALID_MASK ;
 int EINVAL ;
 int WRITE_ONCE (int ,int ) ;
 int __sme_set (int) ;
 int * avic_get_physical_id_entry (struct kvm_vcpu*,int) ;
 int avic_init_access_page (struct kvm_vcpu*) ;
 int page_to_phys (int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 int virt_to_page (int ) ;

__attribute__((used)) static int avic_init_backing_page(struct kvm_vcpu *vcpu)
{
 int ret;
 u64 *entry, new_entry;
 int id = vcpu->vcpu_id;
 struct vcpu_svm *svm = to_svm(vcpu);

 ret = avic_init_access_page(vcpu);
 if (ret)
  return ret;

 if (id >= AVIC_MAX_PHYSICAL_ID_COUNT)
  return -EINVAL;

 if (!svm->vcpu.arch.apic->regs)
  return -EINVAL;

 svm->avic_backing_page = virt_to_page(svm->vcpu.arch.apic->regs);


 entry = avic_get_physical_id_entry(vcpu, id);
 if (!entry)
  return -EINVAL;

 new_entry = __sme_set((page_to_phys(svm->avic_backing_page) &
         AVIC_PHYSICAL_ID_ENTRY_BACKING_PAGE_MASK) |
         AVIC_PHYSICAL_ID_ENTRY_VALID_MASK);
 WRITE_ONCE(*entry, new_entry);

 svm->avic_physical_id_cache = entry;

 return 0;
}
