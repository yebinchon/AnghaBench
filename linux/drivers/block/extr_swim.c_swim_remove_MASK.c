#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct swim_priv {int floppy_count; TYPE_2__* unit; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* disk; int /*<<< orphan*/  tag_set; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLOPPY_MAJOR ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct swim_priv*) ; 
 struct swim_priv* FUNC7 (struct platform_device*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *dev)
{
	struct swim_priv *swd = FUNC7(dev);
	int drive;
	struct resource *res;

	FUNC3(FUNC0(FLOPPY_MAJOR, 0), 256);

	for (drive = 0; drive < swd->floppy_count; drive++) {
		FUNC4(swd->unit[drive].disk);
		FUNC1(swd->unit[drive].disk->queue);
		FUNC2(&swd->unit[drive].tag_set);
		FUNC9(swd->unit[drive].disk);
	}

	FUNC12(FLOPPY_MAJOR, "fd");

	/* eject floppies */

	for (drive = 0; drive < swd->floppy_count; drive++)
		FUNC5(&swd->unit[drive]);

	res = FUNC8(dev, IORESOURCE_MEM, 0);
	if (res)
		FUNC10(res->start, FUNC11(res));

	FUNC6(swd);

	return 0;
}