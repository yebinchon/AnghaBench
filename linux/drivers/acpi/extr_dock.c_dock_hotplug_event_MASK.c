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
typedef  int /*<<< orphan*/  u32 ;
struct dock_dependent_device {struct acpi_device* adev; } ;
struct acpi_device {TYPE_1__* hp; } ;
typedef  enum dock_callback_type { ____Placeholder_dock_callback_type } dock_callback_type ;
struct TYPE_2__ {void (* fixup ) (struct acpi_device*) ;void (* uevent ) (struct acpi_device*,int /*<<< orphan*/ ) ;int (* notify ) (struct acpi_device*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int DOCK_CALL_FIXUP ; 
 int DOCK_CALL_UEVENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct dock_dependent_device *dd, u32 event,
			       enum dock_callback_type cb_type)
{
	struct acpi_device *adev = dd->adev;

	FUNC0();

	if (!adev->hp)
		goto out;

	if (cb_type == DOCK_CALL_FIXUP) {
		void (*fixup)(struct acpi_device *);

		fixup = adev->hp->fixup;
		if (fixup) {
			FUNC1();
			fixup(adev);
			return;
		}
	} else if (cb_type == DOCK_CALL_UEVENT) {
		void (*uevent)(struct acpi_device *, u32);

		uevent = adev->hp->uevent;
		if (uevent) {
			FUNC1();
			uevent(adev, event);
			return;
		}
	} else {
		int (*notify)(struct acpi_device *, u32);

		notify = adev->hp->notify;
		if (notify) {
			FUNC1();
			notify(adev, event);
			return;
		}
	}

 out:
	FUNC1();
}