
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_svm {int hnode; scalar_t__ avic_physical_id_table_page; scalar_t__ avic_logical_id_table_page; } ;
struct kvm {int dummy; } ;


 int __free_page (scalar_t__) ;
 int avic ;
 int hash_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int svm_vm_data_hash_lock ;
 struct kvm_svm* to_kvm_svm (struct kvm*) ;

__attribute__((used)) static void avic_vm_destroy(struct kvm *kvm)
{
 unsigned long flags;
 struct kvm_svm *kvm_svm = to_kvm_svm(kvm);

 if (!avic)
  return;

 if (kvm_svm->avic_logical_id_table_page)
  __free_page(kvm_svm->avic_logical_id_table_page);
 if (kvm_svm->avic_physical_id_table_page)
  __free_page(kvm_svm->avic_physical_id_table_page);

 spin_lock_irqsave(&svm_vm_data_hash_lock, flags);
 hash_del(&kvm_svm->hnode);
 spin_unlock_irqrestore(&svm_vm_data_hash_lock, flags);
}
