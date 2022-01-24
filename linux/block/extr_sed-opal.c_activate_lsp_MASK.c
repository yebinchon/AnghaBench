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
typedef  int /*<<< orphan*/  user_lr ;
typedef  int u8 ;
struct opal_lr_act {int* lr; int num_lrs; scalar_t__ sum; } ;
struct opal_dev {int dummy; } ;

/* Variables and functions */
 size_t OPAL_ACTIVATE ; 
 int OPAL_ENDLIST ; 
 int OPAL_ENDNAME ; 
 size_t OPAL_LOCKINGSP_UID ; 
 int OPAL_STARTLIST ; 
 int OPAL_STARTNAME ; 
 int OPAL_UID_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int*,struct opal_dev*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,struct opal_dev*,int) ; 
 int FUNC2 (int*,int,int) ; 
 int FUNC3 (struct opal_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * opalmethod ; 
 int /*<<< orphan*/ * opaluid ; 
 int /*<<< orphan*/  parse_and_check_status ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct opal_dev *dev, void *data)
{
	struct opal_lr_act *opal_act = data;
	u8 user_lr[OPAL_UID_LENGTH];
	u8 uint_3 = 0x83;
	int err, i;

	err = FUNC3(dev, opaluid[OPAL_LOCKINGSP_UID],
			opalmethod[OPAL_ACTIVATE]);

	if (opal_act->sum) {
		err = FUNC2(user_lr, sizeof(user_lr),
					  opal_act->lr[0]);
		if (err)
			return err;

		FUNC1(&err, dev, OPAL_STARTNAME);
		FUNC1(&err, dev, uint_3);
		FUNC1(&err, dev, 6);
		FUNC1(&err, dev, 0);
		FUNC1(&err, dev, 0);

		FUNC1(&err, dev, OPAL_STARTLIST);
		FUNC0(&err, dev, user_lr, OPAL_UID_LENGTH);
		for (i = 1; i < opal_act->num_lrs; i++) {
			user_lr[7] = opal_act->lr[i];
			FUNC0(&err, dev, user_lr, OPAL_UID_LENGTH);
		}
		FUNC1(&err, dev, OPAL_ENDLIST);
		FUNC1(&err, dev, OPAL_ENDNAME);
	}

	if (err) {
		FUNC5("Error building Activate LockingSP command.\n");
		return err;
	}

	return FUNC4(dev, parse_and_check_status);
}