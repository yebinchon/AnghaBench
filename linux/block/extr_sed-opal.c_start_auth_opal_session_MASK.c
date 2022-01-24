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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {size_t key_len; scalar_t__ lr; int /*<<< orphan*/ * key; } ;
struct opal_session_info {scalar_t__ who; scalar_t__ sum; TYPE_1__ opal_key; } ;
struct opal_dev {int dummy; } ;
typedef  int /*<<< orphan*/  lk_ul_user ;

/* Variables and functions */
 int /*<<< orphan*/  GENERIC_HOST_SESSION_NUM ; 
 scalar_t__ OPAL_ADMIN1 ; 
 size_t OPAL_ADMIN1_UID ; 
 int OPAL_ENDNAME ; 
 size_t OPAL_LOCKINGSP_UID ; 
 size_t OPAL_SMUID_UID ; 
 int OPAL_STARTNAME ; 
 size_t OPAL_STARTSESSION ; 
 int OPAL_UID_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int*,struct opal_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,struct opal_dev*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int FUNC4 (struct opal_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * opalmethod ; 
 int /*<<< orphan*/ ** opaluid ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  start_opal_session_cont ; 

__attribute__((used)) static int FUNC8(struct opal_dev *dev, void *data)
{
	struct opal_session_info *session = data;
	u8 lk_ul_user[OPAL_UID_LENGTH];
	size_t keylen = session->opal_key.key_len;
	int err = 0;

	u8 *key = session->opal_key.key;
	u32 hsn = GENERIC_HOST_SESSION_NUM;

	if (session->sum)
		err = FUNC3(lk_ul_user, sizeof(lk_ul_user),
					 session->opal_key.lr);
	else if (session->who != OPAL_ADMIN1 && !session->sum)
		err = FUNC3(lk_ul_user, sizeof(lk_ul_user),
					 session->who - 1);
	else
		FUNC6(lk_ul_user, opaluid[OPAL_ADMIN1_UID], OPAL_UID_LENGTH);

	if (err)
		return err;

	err = FUNC4(dev, opaluid[OPAL_SMUID_UID],
			opalmethod[OPAL_STARTSESSION]);

	FUNC1(&err, dev, hsn);
	FUNC0(&err, dev, opaluid[OPAL_LOCKINGSP_UID],
			     OPAL_UID_LENGTH);
	FUNC2(&err, dev, 1);
	FUNC2(&err, dev, OPAL_STARTNAME);
	FUNC2(&err, dev, 0);
	FUNC0(&err, dev, key, keylen);
	FUNC2(&err, dev, OPAL_ENDNAME);
	FUNC2(&err, dev, OPAL_STARTNAME);
	FUNC2(&err, dev, 3);
	FUNC0(&err, dev, lk_ul_user, OPAL_UID_LENGTH);
	FUNC2(&err, dev, OPAL_ENDNAME);

	if (err) {
		FUNC7("Error building STARTSESSION command.\n");
		return err;
	}

	return FUNC5(dev, start_opal_session_cont);
}