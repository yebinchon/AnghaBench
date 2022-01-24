#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* next_device; int /*<<< orphan*/  port; int /*<<< orphan*/  line; } ;
typedef  TYPE_1__ MGSLPC_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  mgslpc_device_count ; 
 TYPE_1__* mgslpc_device_list ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  serial_driver ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(MGSLPC_INFO *remove_info)
{
	MGSLPC_INFO *info = mgslpc_device_list;
	MGSLPC_INFO *last = NULL;

	while(info) {
		if (info == remove_info) {
			if (last)
				last->next_device = info->next_device;
			else
				mgslpc_device_list = info->next_device;
			FUNC4(serial_driver, info->line);
#if SYNCLINK_GENERIC_HDLC
			hdlcdev_exit(info);
#endif
			FUNC2(info);
			FUNC3(&info->port);
			FUNC1(info);
			mgslpc_device_count--;
			return;
		}
		last = info;
		info = info->next_device;
	}
}