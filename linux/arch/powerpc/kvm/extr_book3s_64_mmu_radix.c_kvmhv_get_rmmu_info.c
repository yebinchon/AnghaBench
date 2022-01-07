
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_ppc_rmmu_info {TYPE_1__* geometries; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {int page_shift; int* level_bits; } ;


 int EINVAL ;
 int MMU_PAGE_1G ;
 int MMU_PAGE_2M ;
 int MMU_PAGE_4K ;
 int MMU_PAGE_64K ;
 int add_rmmu_ap_encoding (struct kvm_ppc_rmmu_info*,int ,int*) ;
 int memset (struct kvm_ppc_rmmu_info*,int ,int) ;
 void** p9_supported_radix_bits ;
 int radix_enabled () ;

int kvmhv_get_rmmu_info(struct kvm *kvm, struct kvm_ppc_rmmu_info *info)
{
 int i;

 if (!radix_enabled())
  return -EINVAL;
 memset(info, 0, sizeof(*info));


 info->geometries[0].page_shift = 12;
 info->geometries[0].level_bits[0] = 9;
 for (i = 1; i < 4; ++i)
  info->geometries[0].level_bits[i] = p9_supported_radix_bits[i];

 info->geometries[1].page_shift = 16;
 for (i = 0; i < 4; ++i)
  info->geometries[1].level_bits[i] = p9_supported_radix_bits[i];

 i = 0;
 add_rmmu_ap_encoding(info, MMU_PAGE_4K, &i);
 add_rmmu_ap_encoding(info, MMU_PAGE_64K, &i);
 add_rmmu_ap_encoding(info, MMU_PAGE_2M, &i);
 add_rmmu_ap_encoding(info, MMU_PAGE_1G, &i);

 return 0;
}
