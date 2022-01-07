
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int kvm_flush_remote_tlbs (struct kvm*) ;
 int trace_kvm_unmap_hva (unsigned long) ;

__attribute__((used)) static int kvm_unmap_hva(struct kvm *kvm, unsigned long hva)
{
 trace_kvm_unmap_hva(hva);





 kvm_flush_remote_tlbs(kvm);

 return 0;
}
