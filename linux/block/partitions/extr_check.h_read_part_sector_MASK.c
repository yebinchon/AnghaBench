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
struct parsed_partitions {int access_beyond_eod; TYPE_1__* bdev; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  bd_disk; } ;
typedef  int /*<<< orphan*/  Sector ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void *FUNC2(struct parsed_partitions *state,
				     sector_t n, Sector *p)
{
	if (n >= FUNC0(state->bdev->bd_disk)) {
		state->access_beyond_eod = true;
		return NULL;
	}
	return FUNC1(state->bdev, n, p);
}