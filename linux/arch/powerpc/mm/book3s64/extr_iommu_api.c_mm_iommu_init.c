
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iommu_group_mem_list; } ;
struct mm_struct {TYPE_1__ context; } ;


 int INIT_LIST_HEAD_RCU (int *) ;

void mm_iommu_init(struct mm_struct *mm)
{
 INIT_LIST_HEAD_RCU(&mm->context.iommu_group_mem_list);
}
