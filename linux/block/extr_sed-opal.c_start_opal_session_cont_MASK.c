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
typedef  scalar_t__ u32 ;
struct opal_dev {scalar_t__ tsn; scalar_t__ hsn; int /*<<< orphan*/  parsed; } ;

/* Variables and functions */
 int EPERM ; 
 int FUNC0 (struct opal_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct opal_dev *dev)
{
	u32 hsn, tsn;
	int error = 0;

	error = FUNC0(dev);
	if (error)
		return error;

	hsn = FUNC2(&dev->parsed, 4);
	tsn = FUNC2(&dev->parsed, 5);

	if (hsn == 0 && tsn == 0) {
		FUNC1("Couldn't authenticate session\n");
		return -EPERM;
	}

	dev->hsn = hsn;
	dev->tsn = tsn;

	return 0;
}