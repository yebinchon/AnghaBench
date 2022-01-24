#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; scalar_t__ rx_enabled; int /*<<< orphan*/  device_name; } ;
typedef  TYPE_1__ MGSLPC_INFO ;

/* Variables and functions */
 scalar_t__ DEBUG_LEVEL_INFO ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(MGSLPC_INFO * info, int enable)
{
	unsigned long flags;

	if (debug_level >= DEBUG_LEVEL_INFO)
		FUNC0("set_rxenable(%s,%d)\n", info->device_name, enable);

	FUNC3(&info->lock, flags);
	if (enable) {
		if (!info->rx_enabled)
			FUNC1(info);
	} else {
		if (info->rx_enabled)
			FUNC2(info);
	}
	FUNC4(&info->lock, flags);
	return 0;
}