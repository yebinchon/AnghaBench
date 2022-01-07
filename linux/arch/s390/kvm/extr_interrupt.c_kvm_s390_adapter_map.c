
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s390_map_info {int addr; int page; int list; int guest_addr; } ;
struct s390_io_adapter {int maps_lock; int maps; int nr_maps; } ;
struct TYPE_2__ {int gmap; } ;
struct kvm {TYPE_1__ arch; } ;
typedef int __u64 ;


 int BUG_ON (int) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int FOLL_WRITE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MAX_S390_ADAPTER_MAPS ;
 scalar_t__ atomic_inc_return (int *) ;
 int down_write (int *) ;
 struct s390_io_adapter* get_io_adapter (struct kvm*,unsigned int) ;
 int get_user_pages_fast (int,int,int ,int *) ;
 int gmap_translate (int ,int ) ;
 int kfree (struct s390_map_info*) ;
 struct s390_map_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int put_page (int ) ;
 int up_write (int *) ;

__attribute__((used)) static int kvm_s390_adapter_map(struct kvm *kvm, unsigned int id, __u64 addr)
{
 struct s390_io_adapter *adapter = get_io_adapter(kvm, id);
 struct s390_map_info *map;
 int ret;

 if (!adapter || !addr)
  return -EINVAL;

 map = kzalloc(sizeof(*map), GFP_KERNEL);
 if (!map) {
  ret = -ENOMEM;
  goto out;
 }
 INIT_LIST_HEAD(&map->list);
 map->guest_addr = addr;
 map->addr = gmap_translate(kvm->arch.gmap, addr);
 if (map->addr == -EFAULT) {
  ret = -EFAULT;
  goto out;
 }
 ret = get_user_pages_fast(map->addr, 1, FOLL_WRITE, &map->page);
 if (ret < 0)
  goto out;
 BUG_ON(ret != 1);
 down_write(&adapter->maps_lock);
 if (atomic_inc_return(&adapter->nr_maps) < MAX_S390_ADAPTER_MAPS) {
  list_add_tail(&map->list, &adapter->maps);
  ret = 0;
 } else {
  put_page(map->page);
  ret = -EINVAL;
 }
 up_write(&adapter->maps_lock);
out:
 if (ret)
  kfree(map);
 return ret;
}
