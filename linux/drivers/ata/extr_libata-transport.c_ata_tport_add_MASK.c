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
struct device {int /*<<< orphan*/  release; struct device* parent; int /*<<< orphan*/ * type; } ;
struct ata_port {int /*<<< orphan*/  host; int /*<<< orphan*/  link; int /*<<< orphan*/  print_id; struct device tdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ata_port_type ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ata_tport_release ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 

int FUNC18(struct device *parent,
		  struct ata_port *ap)
{
	int error;
	struct device *dev = &ap->tdev;

	FUNC8(dev);
	dev->type = &ata_port_type;

	dev->parent = parent;
	FUNC1(ap->host);
	dev->release = ata_tport_release;
	FUNC4(dev, "ata%d", ap->print_id);
	FUNC17(dev);
	FUNC0(ap);
	error = FUNC5(dev);
	if (error) {
		goto tport_err;
	}

	FUNC7(dev);
	FUNC11(dev);
	FUNC9(dev);
	FUNC10(dev);

	FUNC13(dev);
	FUNC14(dev);

	error = FUNC3(&ap->link);
	if (error) {
		goto tport_link_err;
	}
	return 0;

 tport_link_err:
	FUNC16(dev);
	FUNC6(dev);

 tport_err:
	FUNC15(dev);
	FUNC12(dev);
	FUNC2(ap->host);
	return error;
}