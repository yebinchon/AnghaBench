
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm {int dummy; } ;
struct TYPE_2__ {int (* flush_shadow_all ) (struct kvm*) ;} ;


 int handle_hva_to_gpa (struct kvm*,unsigned long,unsigned long,int *,int *) ;
 TYPE_1__* kvm_mips_callbacks ;
 int kvm_unmap_hva_handler ;
 int stub1 (struct kvm*) ;

int kvm_unmap_hva_range(struct kvm *kvm, unsigned long start, unsigned long end)
{
 handle_hva_to_gpa(kvm, start, end, &kvm_unmap_hva_handler, ((void*)0));

 kvm_mips_callbacks->flush_shadow_all(kvm);
 return 0;
}
