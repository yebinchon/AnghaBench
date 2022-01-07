
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int hva_handler_fn ;


 int kvm_handle_hva_range (struct kvm*,unsigned long,unsigned long,int ) ;

__attribute__((used)) static int kvm_handle_hva(struct kvm *kvm, unsigned long hva,
     hva_handler_fn handler)
{
 return kvm_handle_hva_range(kvm, hva, hva + 1, handler);
}
