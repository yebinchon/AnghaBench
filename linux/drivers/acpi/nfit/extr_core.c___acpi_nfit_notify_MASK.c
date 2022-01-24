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
typedef  int u32 ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
#define  NFIT_NOTIFY_UC_MEMORY_ERROR 129 
#define  NFIT_NOTIFY_UPDATE 128 
 void FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 void FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 

void FUNC3(struct device *dev, acpi_handle handle, u32 event)
{
	FUNC2(dev, "event: 0x%x\n", event);

	switch (event) {
	case NFIT_NOTIFY_UPDATE:
		return FUNC1(dev, handle);
	case NFIT_NOTIFY_UC_MEMORY_ERROR:
		return FUNC0(dev, handle);
	default:
		return;
	}
}