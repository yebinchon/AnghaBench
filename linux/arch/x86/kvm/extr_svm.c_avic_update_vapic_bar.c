
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct vcpu_svm {TYPE_2__* vmcb; } ;
struct TYPE_3__ {int avic_vapic_bar; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int VMCB_AVIC ;
 int VMCB_AVIC_APIC_BAR_MASK ;
 int mark_dirty (TYPE_2__*,int ) ;

__attribute__((used)) static inline void avic_update_vapic_bar(struct vcpu_svm *svm, u64 data)
{
 svm->vmcb->control.avic_vapic_bar = data & VMCB_AVIC_APIC_BAR_MASK;
 mark_dirty(svm->vmcb, VMCB_AVIC);
}
