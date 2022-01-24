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
struct ubd {scalar_t__ count; int /*<<< orphan*/  pdev; int /*<<< orphan*/ * file; } ;
struct gendisk {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct gendisk*) ; 
 struct gendisk** fake_gendisk ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gendisk*) ; 
 struct ubd* ubd_devs ; 
 struct gendisk** ubd_gendisk ; 
 int /*<<< orphan*/  ubd_lock ; 

__attribute__((used)) static int FUNC5(int n, char **error_out)
{
	struct gendisk *disk = ubd_gendisk[n];
	struct ubd *ubd_dev;
	int err = -ENODEV;

	FUNC1(&ubd_lock);

	ubd_dev = &ubd_devs[n];

	if(ubd_dev->file == NULL)
		goto out;

	/* you cannot remove a open disk */
	err = -EBUSY;
	if(ubd_dev->count > 0)
		goto out;

	ubd_gendisk[n] = NULL;
	if(disk != NULL){
		FUNC0(disk);
		FUNC4(disk);
	}

	if(fake_gendisk[n] != NULL){
		FUNC0(fake_gendisk[n]);
		FUNC4(fake_gendisk[n]);
		fake_gendisk[n] = NULL;
	}

	err = 0;
	FUNC3(&ubd_dev->pdev);
out:
	FUNC2(&ubd_lock);
	return err;
}