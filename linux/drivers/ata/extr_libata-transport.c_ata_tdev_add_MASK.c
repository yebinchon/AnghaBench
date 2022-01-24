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
struct device {int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct ata_port {int /*<<< orphan*/  print_id; } ;
struct ata_link {int /*<<< orphan*/  pmp; int /*<<< orphan*/  tdev; struct ata_port* ap; } ;
struct ata_device {int /*<<< orphan*/  devno; struct ata_link* link; struct device tdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_device*) ; 
 scalar_t__ FUNC1 (struct ata_link*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*) ; 
 int /*<<< orphan*/  ata_tdev_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct ata_device *ata_dev)
{
	struct device *dev = &ata_dev->tdev;
	struct ata_link *link = ata_dev->link;
	struct ata_port *ap = link->ap;
	int error;

	FUNC5(dev);
	dev->parent = &link->tdev;
	dev->release = ata_tdev_release;
	if (FUNC1(link))
		FUNC3(dev, "dev%d.%d", ap->print_id,ata_dev->devno);
        else
		FUNC3(dev, "dev%d.%d.0", ap->print_id, link->pmp);

	FUNC8(dev);
	FUNC0(ata_dev);
	error = FUNC4(dev);
	if (error) {
		FUNC2(ata_dev);
		return error;
	}

	FUNC6(dev);
	FUNC7(dev);
	return 0;
}