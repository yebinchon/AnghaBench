#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid ;
typedef  scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ lr; } ;
struct TYPE_4__ {TYPE_1__ opal_key; } ;
struct opal_user_lr_setup {int range_start; int range_length; int /*<<< orphan*/  WLE; int /*<<< orphan*/  RLE; TYPE_2__ session; } ;
struct opal_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_ENDLIST ; 
 int /*<<< orphan*/  OPAL_ENDNAME ; 
 int /*<<< orphan*/  OPAL_RANGELENGTH ; 
 int /*<<< orphan*/  OPAL_RANGESTART ; 
 int /*<<< orphan*/  OPAL_READLOCKENABLED ; 
 size_t OPAL_SET ; 
 int /*<<< orphan*/  OPAL_STARTLIST ; 
 int /*<<< orphan*/  OPAL_STARTNAME ; 
 int OPAL_UID_LENGTH ; 
 int /*<<< orphan*/  OPAL_VALUES ; 
 int /*<<< orphan*/  OPAL_WRITELOCKENABLED ; 
 int /*<<< orphan*/  FUNC0 (int*,struct opal_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,struct opal_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__*,int,scalar_t__) ; 
 int FUNC3 (struct opal_dev*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct opal_dev*,scalar_t__*,struct opal_user_lr_setup*) ; 
 int FUNC5 (struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * opalmethod ; 
 int /*<<< orphan*/  parse_and_check_status ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct opal_dev *dev, void *data)
{
	u8 uid[OPAL_UID_LENGTH];
	struct opal_user_lr_setup *setup = data;
	u8 lr;
	int err;

	lr = setup->session.opal_key.lr;
	err = FUNC2(uid, sizeof(uid), lr);
	if (err)
		return err;

	if (lr == 0)
		err = FUNC4(dev, uid, setup);
	else {
		err = FUNC3(dev, uid, opalmethod[OPAL_SET]);

		FUNC1(&err, dev, OPAL_STARTNAME);
		FUNC1(&err, dev, OPAL_VALUES);
		FUNC1(&err, dev, OPAL_STARTLIST);

		FUNC1(&err, dev, OPAL_STARTNAME);
		FUNC1(&err, dev, OPAL_RANGESTART);
		FUNC0(&err, dev, setup->range_start);
		FUNC1(&err, dev, OPAL_ENDNAME);

		FUNC1(&err, dev, OPAL_STARTNAME);
		FUNC1(&err, dev, OPAL_RANGELENGTH);
		FUNC0(&err, dev, setup->range_length);
		FUNC1(&err, dev, OPAL_ENDNAME);

		FUNC1(&err, dev, OPAL_STARTNAME);
		FUNC1(&err, dev, OPAL_READLOCKENABLED);
		FUNC0(&err, dev, !!setup->RLE);
		FUNC1(&err, dev, OPAL_ENDNAME);

		FUNC1(&err, dev, OPAL_STARTNAME);
		FUNC1(&err, dev, OPAL_WRITELOCKENABLED);
		FUNC0(&err, dev, !!setup->WLE);
		FUNC1(&err, dev, OPAL_ENDNAME);

		FUNC1(&err, dev, OPAL_ENDLIST);
		FUNC1(&err, dev, OPAL_ENDNAME);
	}
	if (err) {
		FUNC6("Error building Setup Locking range command.\n");
		return err;
	}

	return FUNC5(dev, parse_and_check_status);
}