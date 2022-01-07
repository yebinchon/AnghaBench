
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct mm_iommu_table_group_mem_t {scalar_t__ used; scalar_t__ dev_hpa; unsigned long entries; int mapped; } ;


 long EBUSY ;
 long ENOENT ;
 scalar_t__ MM_IOMMU_TABLE_INVALID_HPA ;
 int account_locked_vm (struct mm_struct*,unsigned long,int) ;
 int atomic_cmpxchg (int *,int,int ) ;
 int mem_list_mutex ;
 int mm_iommu_release (struct mm_iommu_table_group_mem_t*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

long mm_iommu_put(struct mm_struct *mm, struct mm_iommu_table_group_mem_t *mem)
{
 long ret = 0;
 unsigned long unlock_entries = 0;

 mutex_lock(&mem_list_mutex);

 if (mem->used == 0) {
  ret = -ENOENT;
  goto unlock_exit;
 }

 --mem->used;

 if (mem->used)
  goto unlock_exit;


 if (atomic_cmpxchg(&mem->mapped, 1, 0) != 1) {
  ++mem->used;
  ret = -EBUSY;
  goto unlock_exit;
 }

 if (mem->dev_hpa == MM_IOMMU_TABLE_INVALID_HPA)
  unlock_entries = mem->entries;


 mm_iommu_release(mem);

unlock_exit:
 mutex_unlock(&mem_list_mutex);

 account_locked_vm(mm, unlock_entries, 0);

 return ret;
}
