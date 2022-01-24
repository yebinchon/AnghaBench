#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_8__ {int line; int max_frame_size; struct TYPE_8__* next_device; TYPE_1__* p_dev; int /*<<< orphan*/  port; int /*<<< orphan*/  irq_level; int /*<<< orphan*/  io_base; int /*<<< orphan*/  device_name; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_2__ MGSLPC_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int MAX_DEVICE_COUNT ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int* maxframe ; 
 int mgslpc_device_count ; 
 TYPE_2__* mgslpc_device_list ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  serial_driver ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct device* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(MGSLPC_INFO *info)
{
	MGSLPC_INFO *current_dev = NULL;
	struct device *tty_dev;
	int ret;

	info->next_device = NULL;
	info->line = mgslpc_device_count;
	FUNC5(info->device_name,"ttySLP%d",info->line);

	if (info->line < MAX_DEVICE_COUNT) {
		if (maxframe[info->line])
			info->max_frame_size = maxframe[info->line];
	}

	mgslpc_device_count++;

	if (!mgslpc_device_list)
		mgslpc_device_list = info;
	else {
		current_dev = mgslpc_device_list;
		while (current_dev->next_device)
			current_dev = current_dev->next_device;
		current_dev->next_device = info;
	}

	if (info->max_frame_size < 4096)
		info->max_frame_size = 4096;
	else if (info->max_frame_size > 65535)
		info->max_frame_size = 65535;

	FUNC4("SyncLink PC Card %s:IO=%04X IRQ=%d\n",
		info->device_name, info->io_base, info->irq_level);

#if SYNCLINK_GENERIC_HDLC
	ret = hdlcdev_init(info);
	if (ret != 0)
		goto failed;
#endif

	tty_dev = FUNC6(&info->port, serial_driver, info->line,
			&info->p_dev->dev);
	if (FUNC0(tty_dev)) {
		ret = FUNC1(tty_dev);
#if SYNCLINK_GENERIC_HDLC
		hdlcdev_exit(info);
#endif
		goto failed;
	}

	return 0;

failed:
	if (current_dev)
		current_dev->next_device = NULL;
	else
		mgslpc_device_list = NULL;
	mgslpc_device_count--;
	return ret;
}