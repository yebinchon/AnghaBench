#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s390_map_info {int addr; int /*<<< orphan*/  page; int /*<<< orphan*/  list; int /*<<< orphan*/  guest_addr; } ;
struct s390_io_adapter {int /*<<< orphan*/  maps_lock; int /*<<< orphan*/  maps; int /*<<< orphan*/  nr_maps; } ;
struct TYPE_2__ {int /*<<< orphan*/  gmap; } ;
struct kvm {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FOLL_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_S390_ADAPTER_MAPS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct s390_io_adapter* FUNC4 (struct kvm*,unsigned int) ; 
 int FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct s390_map_info*) ; 
 struct s390_map_info* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct kvm *kvm, unsigned int id, __u64 addr)
{
	struct s390_io_adapter *adapter = FUNC4(kvm, id);
	struct s390_map_info *map;
	int ret;

	if (!adapter || !addr)
		return -EINVAL;

	map = FUNC8(sizeof(*map), GFP_KERNEL);
	if (!map) {
		ret = -ENOMEM;
		goto out;
	}
	FUNC1(&map->list);
	map->guest_addr = addr;
	map->addr = FUNC6(kvm->arch.gmap, addr);
	if (map->addr == -EFAULT) {
		ret = -EFAULT;
		goto out;
	}
	ret = FUNC5(map->addr, 1, FOLL_WRITE, &map->page);
	if (ret < 0)
		goto out;
	FUNC0(ret != 1);
	FUNC3(&adapter->maps_lock);
	if (FUNC2(&adapter->nr_maps) < MAX_S390_ADAPTER_MAPS) {
		FUNC9(&map->list, &adapter->maps);
		ret = 0;
	} else {
		FUNC10(map->page);
		ret = -EINVAL;
	}
	FUNC11(&adapter->maps_lock);
out:
	if (ret)
		FUNC7(map);
	return ret;
}