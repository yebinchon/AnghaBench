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
struct platform_device {int dummy; } ;
struct ghes {int /*<<< orphan*/  list; int /*<<< orphan*/  irq; int /*<<< orphan*/  timer; int /*<<< orphan*/  flags; struct acpi_hest_generic* generic; } ;
struct TYPE_2__ {int type; } ;
struct acpi_hest_generic {TYPE_1__ notify; } ;

/* Variables and functions */
#define  ACPI_HEST_NOTIFY_EXTERNAL 135 
#define  ACPI_HEST_NOTIFY_GPIO 134 
#define  ACPI_HEST_NOTIFY_GSIV 133 
#define  ACPI_HEST_NOTIFY_NMI 132 
#define  ACPI_HEST_NOTIFY_POLLED 131 
#define  ACPI_HEST_NOTIFY_SCI 130 
#define  ACPI_HEST_NOTIFY_SEA 129 
#define  ACPI_HEST_NOTIFY_SOFTWARE_DELEGATED 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GHES_EXITING ; 
 int FUNC1 (struct ghes*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ghes*) ; 
 int /*<<< orphan*/  FUNC4 (struct ghes*) ; 
 int /*<<< orphan*/  FUNC5 (struct ghes*) ; 
 int /*<<< orphan*/  ghes_hed ; 
 int /*<<< orphan*/  ghes_list_mutex ; 
 int /*<<< orphan*/  FUNC6 (struct ghes*) ; 
 int /*<<< orphan*/  ghes_notifier_hed ; 
 int /*<<< orphan*/  FUNC7 (struct ghes*) ; 
 int /*<<< orphan*/  FUNC8 (struct ghes*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct ghes* FUNC13 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct platform_device *ghes_dev)
{
	int rc;
	struct ghes *ghes;
	struct acpi_hest_generic *generic;

	ghes = FUNC13(ghes_dev);
	generic = ghes->generic;

	ghes->flags |= GHES_EXITING;
	switch (generic->notify.type) {
	case ACPI_HEST_NOTIFY_POLLED:
		FUNC2(&ghes->timer);
		break;
	case ACPI_HEST_NOTIFY_EXTERNAL:
		FUNC3(ghes->irq, ghes);
		break;

	case ACPI_HEST_NOTIFY_SCI:
	case ACPI_HEST_NOTIFY_GSIV:
	case ACPI_HEST_NOTIFY_GPIO:
		FUNC11(&ghes_list_mutex);
		FUNC9(&ghes->list);
		if (FUNC10(&ghes_hed))
			FUNC16(&ghes_notifier_hed);
		FUNC12(&ghes_list_mutex);
		FUNC15();
		break;

	case ACPI_HEST_NOTIFY_SEA:
		FUNC7(ghes);
		break;
	case ACPI_HEST_NOTIFY_NMI:
		FUNC6(ghes);
		break;
	case ACPI_HEST_NOTIFY_SOFTWARE_DELEGATED:
		rc = FUNC1(ghes);
		if (rc)
			return rc;
		break;
	default:
		FUNC0();
		break;
	}

	FUNC5(ghes);

	FUNC4(ghes);

	FUNC8(ghes);

	FUNC14(ghes_dev, NULL);

	return 0;
}