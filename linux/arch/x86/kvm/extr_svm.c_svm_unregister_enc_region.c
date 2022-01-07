
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_enc_region {int dummy; } ;
struct kvm {int lock; } ;
struct enc_region {int dummy; } ;


 int EINVAL ;
 int ENOTTY ;
 int __unregister_enc_region_locked (struct kvm*,struct enc_region*) ;
 struct enc_region* find_enc_region (struct kvm*,struct kvm_enc_region*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sev_guest (struct kvm*) ;

__attribute__((used)) static int svm_unregister_enc_region(struct kvm *kvm,
         struct kvm_enc_region *range)
{
 struct enc_region *region;
 int ret;

 mutex_lock(&kvm->lock);

 if (!sev_guest(kvm)) {
  ret = -ENOTTY;
  goto failed;
 }

 region = find_enc_region(kvm, range);
 if (!region) {
  ret = -EINVAL;
  goto failed;
 }

 __unregister_enc_region_locked(kvm, region);

 mutex_unlock(&kvm->lock);
 return 0;

failed:
 mutex_unlock(&kvm->lock);
 return ret;
}
