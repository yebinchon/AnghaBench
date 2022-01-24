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
struct opal_dev {int /*<<< orphan*/  comid; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_CALL ; 
 int /*<<< orphan*/  OPAL_METHOD_LENGTH ; 
 int /*<<< orphan*/  OPAL_STARTLIST ; 
 int /*<<< orphan*/  OPAL_UID_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int*,struct opal_dev*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct opal_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct opal_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct opal_dev *dev, const u8 *uid, const u8 *method)
{
	int err = 0;

	FUNC2(dev);
	FUNC3(dev, dev->comid);

	FUNC1(&err, dev, OPAL_CALL);
	FUNC0(&err, dev, uid, OPAL_UID_LENGTH);
	FUNC0(&err, dev, method, OPAL_METHOD_LENGTH);

	/*
	 * Every method call is followed by its parameters enclosed within
	 * OPAL_STARTLIST and OPAL_ENDLIST tokens. We automatically open the
	 * parameter list here and close it later in cmd_finalize.
	 */
	FUNC1(&err, dev, OPAL_STARTLIST);

	return err;
}