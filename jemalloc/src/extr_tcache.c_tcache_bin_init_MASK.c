#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  size_t szind_t ;
struct TYPE_7__ {int lowbits; void* ptr; } ;
struct TYPE_8__ {int low_water_position; int full_position; TYPE_1__ cur_ptr; } ;
typedef  TYPE_2__ cache_bin_t ;
struct TYPE_9__ {int stack_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (TYPE_2__*,size_t) ; 
 scalar_t__ FUNC2 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_4__* tcache_bin_info ; 

__attribute__((used)) static bool
FUNC4(cache_bin_t *bin, szind_t ind, uintptr_t *stack_cur) {
	FUNC3(sizeof(bin->cur_ptr) == sizeof(void *));
	/*
	 * The full_position points to the lowest available space.  Allocations
	 * will access the slots toward higher addresses (for the benefit of
	 * adjacent prefetch).
	 */
	void *full_position = (void *)*stack_cur;
	uint32_t bin_stack_size = tcache_bin_info[ind].stack_size;

	*stack_cur += bin_stack_size;
	void *empty_position = (void *)*stack_cur;

	/* Init to the empty position. */
	bin->cur_ptr.ptr = empty_position;
	bin->low_water_position = bin->cur_ptr.lowbits;
	bin->full_position = (uint32_t)(uintptr_t)full_position;
	FUNC0(bin->cur_ptr.lowbits - bin->full_position == bin_stack_size);
	FUNC0(FUNC2(bin, ind) == 0);
	FUNC0(FUNC1(bin, ind) == empty_position);

	return false;
}