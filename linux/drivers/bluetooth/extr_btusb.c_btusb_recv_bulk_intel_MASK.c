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
struct btusb_data {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTUSB_BOOTLOADER ; 
 int FUNC0 (struct btusb_data*,void*,int) ; 
 int FUNC1 (struct btusb_data*,void*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct btusb_data *data, void *buffer,
				 int count)
{
	/* When the device is in bootloader mode, then it can send
	 * events via the bulk endpoint. These events are treated the
	 * same way as the ones received from the interrupt endpoint.
	 */
	if (FUNC2(BTUSB_BOOTLOADER, &data->flags))
		return FUNC1(data, buffer, count);

	return FUNC0(data, buffer, count);
}