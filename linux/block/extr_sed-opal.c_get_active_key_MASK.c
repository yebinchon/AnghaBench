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
typedef  int /*<<< orphan*/  uid ;
typedef  int /*<<< orphan*/  u8 ;
struct opal_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_ACTIVEKEY ; 
 int OPAL_UID_LENGTH ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct opal_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct opal_dev*) ; 

__attribute__((used)) static int FUNC3(struct opal_dev *dev, void *data)
{
	u8 uid[OPAL_UID_LENGTH];
	int err;
	u8 *lr = data;

	err = FUNC0(uid, sizeof(uid), *lr);
	if (err)
		return err;

	err = FUNC1(dev, uid, OPAL_ACTIVEKEY);
	if (err)
		return err;

	return FUNC2(dev);
}