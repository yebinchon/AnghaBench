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
typedef  int /*<<< orphan*/  uid ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  lr; } ;
struct opal_session_info {TYPE_1__ opal_key; } ;
struct opal_dev {int dummy; } ;

/* Variables and functions */
 int ERANGE ; 
 size_t OPAL_ERASE ; 
 int OPAL_UID_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct opal_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * opalmethod ; 
 int /*<<< orphan*/  parse_and_check_status ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct opal_dev *dev, void *data)
{
	struct opal_session_info *session = data;
	u8 uid[OPAL_UID_LENGTH];
	int err;

	if (FUNC0(uid, sizeof(uid), session->opal_key.lr) < 0)
		return -ERANGE;

	err = FUNC1(dev, uid, opalmethod[OPAL_ERASE]);

	if (err) {
		FUNC3("Error building Erase Locking Range Command.\n");
		return err;
	}

	return FUNC2(dev, parse_and_check_status);
}