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
struct opal_step {int /*<<< orphan*/  member_0; TYPE_1__* member_1; } ;
struct TYPE_2__ {scalar_t__ who; } ;
struct opal_new_pw {TYPE_1__ new_user_pw; TYPE_1__ session; } ;
struct opal_dev {int /*<<< orphan*/  dev_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct opal_step const*) ; 
 int EINVAL ; 
 scalar_t__ OPAL_USER9 ; 
 int /*<<< orphan*/  end_opal_session ; 
 int FUNC1 (struct opal_dev*,struct opal_step const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_new_pw ; 
 int /*<<< orphan*/  FUNC4 (struct opal_dev*) ; 
 int /*<<< orphan*/  start_auth_opal_session ; 

__attribute__((used)) static int FUNC5(struct opal_dev *dev, struct opal_new_pw *opal_pw)
{
	const struct opal_step pw_steps[] = {
		{ start_auth_opal_session, &opal_pw->session },
		{ set_new_pw, &opal_pw->new_user_pw },
		{ end_opal_session, }
	};
	int ret;

	if (opal_pw->session.who > OPAL_USER9  ||
	    opal_pw->new_user_pw.who > OPAL_USER9)
		return -EINVAL;

	FUNC2(&dev->dev_lock);
	FUNC4(dev);
	ret = FUNC1(dev, pw_steps, FUNC0(pw_steps));
	FUNC3(&dev->dev_lock);

	return ret;
}