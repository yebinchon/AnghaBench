
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_sev_info {int regions_list; } ;
struct kvm_enc_region {scalar_t__ addr; scalar_t__ size; } ;
struct kvm {int lock; } ;
struct enc_region {scalar_t__ uaddr; scalar_t__ size; int list; int npages; int pages; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOTTY ;
 int GFP_KERNEL_ACCOUNT ;
 scalar_t__ ULONG_MAX ;
 int kfree (struct enc_region*) ;
 struct enc_region* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sev_clflush_pages (int ,int ) ;
 int sev_guest (struct kvm*) ;
 int sev_pin_memory (struct kvm*,scalar_t__,scalar_t__,int *,int) ;
 TYPE_1__* to_kvm_svm (struct kvm*) ;

__attribute__((used)) static int svm_register_enc_region(struct kvm *kvm,
       struct kvm_enc_region *range)
{
 struct kvm_sev_info *sev = &to_kvm_svm(kvm)->sev_info;
 struct enc_region *region;
 int ret = 0;

 if (!sev_guest(kvm))
  return -ENOTTY;

 if (range->addr > ULONG_MAX || range->size > ULONG_MAX)
  return -EINVAL;

 region = kzalloc(sizeof(*region), GFP_KERNEL_ACCOUNT);
 if (!region)
  return -ENOMEM;

 region->pages = sev_pin_memory(kvm, range->addr, range->size, &region->npages, 1);
 if (!region->pages) {
  ret = -ENOMEM;
  goto e_free;
 }







 sev_clflush_pages(region->pages, region->npages);

 region->uaddr = range->addr;
 region->size = range->size;

 mutex_lock(&kvm->lock);
 list_add_tail(&region->list, &sev->regions_list);
 mutex_unlock(&kvm->lock);

 return ret;

e_free:
 kfree(region);
 return ret;
}
