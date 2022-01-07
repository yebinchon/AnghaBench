
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_hw_wp_info_arch {scalar_t__ len; int * old_data; int phys_addr; int addr; } ;
struct kvm_hw_breakpoint {scalar_t__ len; int phys_addr; int addr; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MAX_WP_SIZE ;
 int kfree (int *) ;
 int * kmalloc (scalar_t__,int ) ;
 int read_guest_abs (struct kvm_vcpu*,int ,int *,scalar_t__) ;

__attribute__((used)) static int __import_wp_info(struct kvm_vcpu *vcpu,
       struct kvm_hw_breakpoint *bp_data,
       struct kvm_hw_wp_info_arch *wp_info)
{
 int ret = 0;
 wp_info->len = bp_data->len;
 wp_info->addr = bp_data->addr;
 wp_info->phys_addr = bp_data->phys_addr;
 wp_info->old_data = ((void*)0);

 if (wp_info->len < 0 || wp_info->len > MAX_WP_SIZE)
  return -EINVAL;

 wp_info->old_data = kmalloc(bp_data->len, GFP_KERNEL);
 if (!wp_info->old_data)
  return -ENOMEM;

 ret = read_guest_abs(vcpu, wp_info->phys_addr, wp_info->old_data,
        wp_info->len);
 if (ret) {
  kfree(wp_info->old_data);
  wp_info->old_data = ((void*)0);
 }

 return ret;
}
