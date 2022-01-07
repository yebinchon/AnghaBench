
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm {int dummy; } ;
struct TYPE_2__ {int (* flush_shadow_all ) (struct kvm*) ;} ;


 TYPE_1__* kvm_mips_callbacks ;
 int kvm_mips_flush_gpa_pt (struct kvm*,int ,int ) ;
 int stub1 (struct kvm*) ;

void kvm_arch_flush_shadow_all(struct kvm *kvm)
{

 kvm_mips_flush_gpa_pt(kvm, 0, ~0);


 kvm_mips_callbacks->flush_shadow_all(kvm);
}
