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
struct opal_step {int /*<<< orphan*/  member_0; struct opal_key* member_1; } ;
struct opal_key {int dummy; } ;
struct opal_dev {int /*<<< orphan*/  dev_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct opal_step const*) ; 
 int /*<<< orphan*/  FUNC1 (struct opal_dev*) ; 
 int FUNC2 (struct opal_dev*,struct opal_step const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  revert_tper ; 
 int /*<<< orphan*/  FUNC5 (struct opal_dev*) ; 
 int /*<<< orphan*/  start_PSID_opal_session ; 
 int /*<<< orphan*/  start_SIDASP_opal_session ; 

__attribute__((used)) static int FUNC6(struct opal_dev *dev, struct opal_key *opal, bool psid)
{
	/* controller will terminate session */
	const struct opal_step revert_steps[] = {
		{ start_SIDASP_opal_session, opal },
		{ revert_tper, }
	};
	const struct opal_step psid_revert_steps[] = {
		{ start_PSID_opal_session, opal },
		{ revert_tper, }
	};

	int ret;

	FUNC3(&dev->dev_lock);
	FUNC5(dev);
	if (psid)
		ret = FUNC2(dev, psid_revert_steps,
				    FUNC0(psid_revert_steps));
	else
		ret = FUNC2(dev, revert_steps,
				    FUNC0(revert_steps));
	FUNC4(&dev->dev_lock);

	/*
	 * If we successfully reverted lets clean
	 * any saved locking ranges.
	 */
	if (!ret)
		FUNC1(dev);

	return ret;
}