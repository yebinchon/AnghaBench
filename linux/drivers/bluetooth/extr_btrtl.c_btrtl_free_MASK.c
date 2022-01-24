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
struct btrtl_device_info {struct btrtl_device_info* cfg_data; struct btrtl_device_info* fw_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrtl_device_info*) ; 

void FUNC1(struct btrtl_device_info *btrtl_dev)
{
	FUNC0(btrtl_dev->fw_data);
	FUNC0(btrtl_dev->cfg_data);
	FUNC0(btrtl_dev);
}