
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_map_info {int guest_addr; int page; int addr; } ;
struct s390_io_adapter {int swap; } ;
struct kvm_s390_adapter_int {int summary_offset; int summary_addr; int ind_offset; int ind_addr; } ;
struct kvm {int srcu; } ;


 int PAGE_SHIFT ;
 unsigned long get_ind_bit (int ,int ,int ) ;
 struct s390_map_info* get_map_info (struct s390_io_adapter*,int ) ;
 int mark_page_dirty (struct kvm*,int) ;
 void* page_address (int ) ;
 int set_bit (unsigned long,void*) ;
 int set_page_dirty_lock (int ) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int test_and_set_bit (unsigned long,void*) ;

__attribute__((used)) static int adapter_indicators_set(struct kvm *kvm,
      struct s390_io_adapter *adapter,
      struct kvm_s390_adapter_int *adapter_int)
{
 unsigned long bit;
 int summary_set, idx;
 struct s390_map_info *info;
 void *map;

 info = get_map_info(adapter, adapter_int->ind_addr);
 if (!info)
  return -1;
 map = page_address(info->page);
 bit = get_ind_bit(info->addr, adapter_int->ind_offset, adapter->swap);
 set_bit(bit, map);
 idx = srcu_read_lock(&kvm->srcu);
 mark_page_dirty(kvm, info->guest_addr >> PAGE_SHIFT);
 set_page_dirty_lock(info->page);
 info = get_map_info(adapter, adapter_int->summary_addr);
 if (!info) {
  srcu_read_unlock(&kvm->srcu, idx);
  return -1;
 }
 map = page_address(info->page);
 bit = get_ind_bit(info->addr, adapter_int->summary_offset,
     adapter->swap);
 summary_set = test_and_set_bit(bit, map);
 mark_page_dirty(kvm, info->guest_addr >> PAGE_SHIFT);
 set_page_dirty_lock(info->page);
 srcu_read_unlock(&kvm->srcu, idx);
 return summary_set ? 0 : 1;
}
