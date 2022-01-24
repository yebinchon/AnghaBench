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
struct io_region {scalar_t__ offset; int /*<<< orphan*/  size; } ;
struct TYPE_2__ {scalar_t__ address; } ;

/* Variables and functions */
 struct io_region const* FUNC0 (struct io_region*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int EBUSY ; 
 TYPE_1__* FDCS ; 
 int /*<<< orphan*/  FUNC2 (int,struct io_region const*) ; 
 struct io_region* io_regions ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(int fdc)
{
	const struct io_region *p;

	for (p = io_regions; p < FUNC0(io_regions); p++) {
		if (!FUNC3(FDCS->address + p->offset,
				    p->size, "floppy")) {
			FUNC1("Floppy io-port 0x%04lx in use\n",
			       FDCS->address + p->offset);
			FUNC2(fdc, p);
			return -EBUSY;
		}
	}
	return 0;
}