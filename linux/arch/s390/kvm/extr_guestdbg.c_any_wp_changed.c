
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr_hw_wp; struct kvm_hw_wp_info_arch* hw_wp_info; } ;
struct TYPE_4__ {TYPE_1__ guestdbg; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_hw_wp_info_arch {int len; int old_data; int phys_addr; } ;


 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kmalloc (int ,int ) ;
 scalar_t__ memcmp (void*,int ,int ) ;
 int read_guest_abs (struct kvm_vcpu*,int ,void*,int ) ;

__attribute__((used)) static struct kvm_hw_wp_info_arch *any_wp_changed(struct kvm_vcpu *vcpu)
{
 int i;
 struct kvm_hw_wp_info_arch *wp_info = ((void*)0);
 void *temp = ((void*)0);

 if (vcpu->arch.guestdbg.nr_hw_wp == 0)
  return ((void*)0);

 for (i = 0; i < vcpu->arch.guestdbg.nr_hw_wp; i++) {
  wp_info = &vcpu->arch.guestdbg.hw_wp_info[i];
  if (!wp_info || !wp_info->old_data || wp_info->len <= 0)
   continue;

  temp = kmalloc(wp_info->len, GFP_KERNEL);
  if (!temp)
   continue;


  if (!read_guest_abs(vcpu, wp_info->phys_addr, temp,
        wp_info->len)) {
   if (memcmp(temp, wp_info->old_data, wp_info->len)) {
    kfree(temp);
    return wp_info;
   }
  }
  kfree(temp);
  temp = ((void*)0);
 }

 return ((void*)0);
}
