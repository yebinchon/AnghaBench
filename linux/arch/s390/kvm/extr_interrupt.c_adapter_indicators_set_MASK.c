#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct s390_map_info {int guest_addr; int /*<<< orphan*/  page; int /*<<< orphan*/  addr; } ;
struct s390_io_adapter {int /*<<< orphan*/  swap; } ;
struct kvm_s390_adapter_int {int /*<<< orphan*/  summary_offset; int /*<<< orphan*/  summary_addr; int /*<<< orphan*/  ind_offset; int /*<<< orphan*/  ind_addr; } ;
struct kvm {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct s390_map_info* FUNC1 (struct s390_io_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (unsigned long,void*) ; 

__attribute__((used)) static int FUNC9(struct kvm *kvm,
				  struct s390_io_adapter *adapter,
				  struct kvm_s390_adapter_int *adapter_int)
{
	unsigned long bit;
	int summary_set, idx;
	struct s390_map_info *info;
	void *map;

	info = FUNC1(adapter, adapter_int->ind_addr);
	if (!info)
		return -1;
	map = FUNC3(info->page);
	bit = FUNC0(info->addr, adapter_int->ind_offset, adapter->swap);
	FUNC4(bit, map);
	idx = FUNC6(&kvm->srcu);
	FUNC2(kvm, info->guest_addr >> PAGE_SHIFT);
	FUNC5(info->page);
	info = FUNC1(adapter, adapter_int->summary_addr);
	if (!info) {
		FUNC7(&kvm->srcu, idx);
		return -1;
	}
	map = FUNC3(info->page);
	bit = FUNC0(info->addr, adapter_int->summary_offset,
			  adapter->swap);
	summary_set = FUNC8(bit, map);
	FUNC2(kvm, info->guest_addr >> PAGE_SHIFT);
	FUNC5(info->page);
	FUNC7(&kvm->srcu, idx);
	return summary_set ? 0 : 1;
}