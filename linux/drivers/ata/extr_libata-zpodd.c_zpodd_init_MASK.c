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
struct zpodd {int mech_type; struct ata_device* dev; } ;
struct ata_device {int /*<<< orphan*/  tdev; struct zpodd* zpodd; } ;
struct acpi_device {int dummy; } ;
typedef  enum odd_mech_type { ____Placeholder_odd_mech_type } odd_mech_type ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ODD_MECH_TYPE_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct zpodd* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ata_device*) ; 

void FUNC6(struct ata_device *dev)
{
	struct acpi_device *adev = FUNC0(&dev->tdev);
	enum odd_mech_type mech_type;
	struct zpodd *zpodd;

	if (dev->zpodd || !adev || !FUNC1(adev))
		return;

	mech_type = FUNC5(dev);
	if (mech_type == ODD_MECH_TYPE_UNSUPPORTED)
		return;

	zpodd = FUNC4(sizeof(struct zpodd), GFP_KERNEL);
	if (!zpodd)
		return;

	zpodd->mech_type = mech_type;

	FUNC2(dev);
	zpodd->dev = dev;
	dev->zpodd = zpodd;
	FUNC3(&dev->tdev, 0);
}