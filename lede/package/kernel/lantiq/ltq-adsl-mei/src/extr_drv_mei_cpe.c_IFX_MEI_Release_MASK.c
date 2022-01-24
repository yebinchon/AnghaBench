#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  i_rdev; } ;
typedef  TYPE_1__ DSL_DRV_inode_t ;
typedef  int /*<<< orphan*/  DSL_DRV_file_t ;
typedef  int /*<<< orphan*/  DSL_DEV_Device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EIO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dsl_devices ; 

__attribute__((used)) static int
FUNC2 (DSL_DRV_inode_t * ino, DSL_DRV_file_t * fil)
{
	//int maj = MAJOR(ino->i_rdev);
	int num = FUNC1 (ino->i_rdev);
	DSL_DEV_Device_t *pDev;

	pDev = &dsl_devices[num];
	if (pDev == NULL)
		return -EIO;
	FUNC0 (pDev);
	return 0;
}