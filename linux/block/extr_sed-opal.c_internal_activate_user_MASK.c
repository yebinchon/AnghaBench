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
typedef  int /*<<< orphan*/  u8 ;
struct opal_session_info {int /*<<< orphan*/  who; } ;
struct opal_dev {int dummy; } ;

/* Variables and functions */
 int OPAL_ENDLIST ; 
 int OPAL_ENDNAME ; 
 size_t OPAL_SET ; 
 int OPAL_STARTLIST ; 
 int OPAL_STARTNAME ; 
 int OPAL_TRUE ; 
 int OPAL_UID_LENGTH ; 
 size_t OPAL_USER1_UID ; 
 int OPAL_VALUES ; 
 int /*<<< orphan*/  FUNC0 (int*,struct opal_dev*,int) ; 
 int FUNC1 (struct opal_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * opalmethod ; 
 int /*<<< orphan*/ * opaluid ; 
 int /*<<< orphan*/  parse_and_check_status ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct opal_dev *dev, void *data)
{
	struct opal_session_info *session = data;
	u8 uid[OPAL_UID_LENGTH];
	int err;

	FUNC3(uid, opaluid[OPAL_USER1_UID], OPAL_UID_LENGTH);
	uid[7] = session->who;

	err = FUNC1(dev, uid, opalmethod[OPAL_SET]);
	FUNC0(&err, dev, OPAL_STARTNAME);
	FUNC0(&err, dev, OPAL_VALUES);
	FUNC0(&err, dev, OPAL_STARTLIST);
	FUNC0(&err, dev, OPAL_STARTNAME);
	FUNC0(&err, dev, 5); /* Enabled */
	FUNC0(&err, dev, OPAL_TRUE);
	FUNC0(&err, dev, OPAL_ENDNAME);
	FUNC0(&err, dev, OPAL_ENDLIST);
	FUNC0(&err, dev, OPAL_ENDNAME);

	if (err) {
		FUNC4("Error building Activate UserN command.\n");
		return err;
	}

	return FUNC2(dev, parse_and_check_status);
}