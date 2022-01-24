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
struct tty_struct {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; scalar_t__ tx_enabled; int /*<<< orphan*/  device_name; } ;
typedef  TYPE_1__ MGSLPC_INFO ;

/* Variables and functions */
 scalar_t__ DEBUG_LEVEL_INFO ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(MGSLPC_INFO * info, int enable, struct tty_struct *tty)
{
	unsigned long flags;

	if (debug_level >= DEBUG_LEVEL_INFO)
		FUNC0("set_txenable(%s,%d)\n", info->device_name, enable);

	FUNC1(&info->lock, flags);
	if (enable) {
		if (!info->tx_enabled)
			FUNC3(info, tty);
	} else {
		if (info->tx_enabled)
			FUNC4(info);
	}
	FUNC2(&info->lock, flags);
	return 0;
}