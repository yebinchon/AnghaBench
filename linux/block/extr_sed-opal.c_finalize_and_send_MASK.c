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
struct opal_dev {int /*<<< orphan*/  pos; int /*<<< orphan*/  cmd; int /*<<< orphan*/  tsn; int /*<<< orphan*/  hsn; } ;
typedef  int /*<<< orphan*/  cont_fn ;

/* Variables and functions */
 int FUNC0 (struct opal_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct opal_dev *dev, cont_fn cont)
{
	int ret;

	ret = FUNC0(dev, dev->hsn, dev->tsn);
	if (ret) {
		FUNC2("Error finalizing command buffer: %d\n", ret);
		return ret;
	}

	FUNC3(dev->cmd, dev->pos);

	return FUNC1(dev, cont);
}