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
struct simdisk {scalar_t__ users; int fd; int /*<<< orphan*/  lock; int /*<<< orphan*/ * filename; TYPE_1__* gd; } ;
struct TYPE_2__ {int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct simdisk *dev)
{
	int err = 0;

	FUNC4(&dev->lock);

	if (dev->users != 0) {
		err = -EBUSY;
	} else if (dev->fd != -1) {
		if (FUNC3(dev->fd)) {
			FUNC1("SIMDISK: error closing %s: %d\n",
					dev->filename, errno);
			err = -EIO;
		} else {
			FUNC2("SIMDISK: %s detached from %s\n",
					dev->gd->disk_name, dev->filename);
			dev->fd = -1;
			FUNC0(dev->filename);
			dev->filename = NULL;
		}
	}
	FUNC5(&dev->lock);
	return err;
}