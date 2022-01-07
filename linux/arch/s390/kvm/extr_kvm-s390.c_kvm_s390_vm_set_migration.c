
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_attr {int attr; } ;
struct kvm {int slots_lock; } ;


 int ENXIO ;


 int kvm_s390_vm_start_migration (struct kvm*) ;
 int kvm_s390_vm_stop_migration (struct kvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvm_s390_vm_set_migration(struct kvm *kvm,
         struct kvm_device_attr *attr)
{
 int res = -ENXIO;

 mutex_lock(&kvm->slots_lock);
 switch (attr->attr) {
 case 129:
  res = kvm_s390_vm_start_migration(kvm);
  break;
 case 128:
  res = kvm_s390_vm_stop_migration(kvm);
  break;
 default:
  break;
 }
 mutex_unlock(&kvm->slots_lock);

 return res;
}
