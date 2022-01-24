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
typedef  int /*<<< orphan*/  umode_t ;
struct gendisk {char* (* devnode ) (struct gendisk*,int /*<<< orphan*/ *) ;} ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 struct gendisk* FUNC0 (struct device*) ; 
 char* FUNC1 (struct gendisk*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC2(struct device *dev, umode_t *mode,
			   kuid_t *uid, kgid_t *gid)
{
	struct gendisk *disk = FUNC0(dev);

	if (disk->devnode)
		return disk->devnode(disk, mode);
	return NULL;
}