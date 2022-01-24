#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  name; scalar_t__ driver_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; scalar_t__ tx_enabled; int /*<<< orphan*/  device_name; } ;
typedef  TYPE_1__ MGSLPC_INFO ;

/* Variables and functions */
 scalar_t__ DEBUG_LEVEL_INFO ; 
 scalar_t__ debug_level ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	MGSLPC_INFO *info = (MGSLPC_INFO *)tty->driver_data;
	unsigned long flags;

	if (FUNC0(info, tty->name, "tx_pause"))
		return;
	if (debug_level >= DEBUG_LEVEL_INFO)
		FUNC1("tx_pause(%s)\n", info->device_name);

	FUNC2(&info->lock, flags);
	if (info->tx_enabled)
		FUNC4(info);
	FUNC3(&info->lock, flags);
}