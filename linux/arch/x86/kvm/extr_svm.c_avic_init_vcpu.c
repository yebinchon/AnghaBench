
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int dfr_reg; int ir_list_lock; int ir_list; int vcpu; } ;


 int APIC_DFR_FLAT ;
 int INIT_LIST_HEAD (int *) ;
 int avic_init_backing_page (int *) ;
 int kvm_vcpu_apicv_active (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int avic_init_vcpu(struct vcpu_svm *svm)
{
 int ret;

 if (!kvm_vcpu_apicv_active(&svm->vcpu))
  return 0;

 ret = avic_init_backing_page(&svm->vcpu);
 if (ret)
  return ret;

 INIT_LIST_HEAD(&svm->ir_list);
 spin_lock_init(&svm->ir_list_lock);
 svm->dfr_reg = APIC_DFR_FLAT;

 return ret;
}
