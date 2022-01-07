
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mmio_gva; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int gva_t ;


 int MMIO_GVA_ANY ;
 int PAGE_MASK ;

__attribute__((used)) static inline void vcpu_clear_mmio_info(struct kvm_vcpu *vcpu, gva_t gva)
{
 if (gva != MMIO_GVA_ANY && vcpu->arch.mmio_gva != (gva & PAGE_MASK))
  return;

 vcpu->arch.mmio_gva = 0;
}
