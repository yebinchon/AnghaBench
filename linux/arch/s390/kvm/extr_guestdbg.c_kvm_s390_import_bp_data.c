
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nr_hw_bp; int nr_hw_wp; struct kvm_hw_wp_info_arch* hw_wp_info; struct kvm_hw_wp_info_arch* hw_bp_info; } ;
struct TYPE_6__ {TYPE_2__ guestdbg; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct kvm_hw_wp_info_arch {int type; int addr; int len; } ;
struct kvm_hw_breakpoint {int type; int addr; int len; } ;
struct kvm_hw_bp_info_arch {int type; int addr; int len; } ;
struct TYPE_4__ {int nr_hw_bp; int hw_bp; } ;
struct kvm_guest_debug {TYPE_1__ arch; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct kvm_hw_wp_info_arch*) ;


 int MAX_BP_COUNT ;
 int PTR_ERR (struct kvm_hw_wp_info_arch*) ;
 int __import_wp_info (struct kvm_vcpu*,struct kvm_hw_wp_info_arch*,struct kvm_hw_wp_info_arch*) ;
 int kfree (struct kvm_hw_wp_info_arch*) ;
 struct kvm_hw_wp_info_arch* kmalloc_array (int,int,int ) ;
 struct kvm_hw_wp_info_arch* memdup_user (int ,int) ;

int kvm_s390_import_bp_data(struct kvm_vcpu *vcpu,
       struct kvm_guest_debug *dbg)
{
 int ret = 0, nr_wp = 0, nr_bp = 0, i;
 struct kvm_hw_breakpoint *bp_data = ((void*)0);
 struct kvm_hw_wp_info_arch *wp_info = ((void*)0);
 struct kvm_hw_bp_info_arch *bp_info = ((void*)0);

 if (dbg->arch.nr_hw_bp <= 0 || !dbg->arch.hw_bp)
  return 0;
 else if (dbg->arch.nr_hw_bp > MAX_BP_COUNT)
  return -EINVAL;

 bp_data = memdup_user(dbg->arch.hw_bp,
         sizeof(*bp_data) * dbg->arch.nr_hw_bp);
 if (IS_ERR(bp_data))
  return PTR_ERR(bp_data);

 for (i = 0; i < dbg->arch.nr_hw_bp; i++) {
  switch (bp_data[i].type) {
  case 128:
   nr_wp++;
   break;
  case 129:
   nr_bp++;
   break;
  default:
   break;
  }
 }

 if (nr_wp > 0) {
  wp_info = kmalloc_array(nr_wp,
     sizeof(*wp_info),
     GFP_KERNEL);
  if (!wp_info) {
   ret = -ENOMEM;
   goto error;
  }
 }
 if (nr_bp > 0) {
  bp_info = kmalloc_array(nr_bp,
     sizeof(*bp_info),
     GFP_KERNEL);
  if (!bp_info) {
   ret = -ENOMEM;
   goto error;
  }
 }

 for (nr_wp = 0, nr_bp = 0, i = 0; i < dbg->arch.nr_hw_bp; i++) {
  switch (bp_data[i].type) {
  case 128:
   ret = __import_wp_info(vcpu, &bp_data[i],
            &wp_info[nr_wp]);
   if (ret)
    goto error;
   nr_wp++;
   break;
  case 129:
   bp_info[nr_bp].len = bp_data[i].len;
   bp_info[nr_bp].addr = bp_data[i].addr;
   nr_bp++;
   break;
  }
 }

 vcpu->arch.guestdbg.nr_hw_bp = nr_bp;
 vcpu->arch.guestdbg.hw_bp_info = bp_info;
 vcpu->arch.guestdbg.nr_hw_wp = nr_wp;
 vcpu->arch.guestdbg.hw_wp_info = wp_info;
 return 0;
error:
 kfree(bp_data);
 kfree(wp_info);
 kfree(bp_info);
 return ret;
}
