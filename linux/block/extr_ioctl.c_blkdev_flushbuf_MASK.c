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
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 int FUNC0 (struct block_device*,int /*<<< orphan*/ ,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct block_device *bdev, fmode_t mode,
		unsigned cmd, unsigned long arg)
{
	int ret;

	if (!FUNC1(CAP_SYS_ADMIN))
		return -EACCES;

	ret = FUNC0(bdev, mode, cmd, arg);
	if (!FUNC4(ret))
		return ret;

	FUNC2(bdev);
	FUNC3(bdev);
	return 0;
}