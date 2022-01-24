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
struct opal_dev {int /*<<< orphan*/ * prev_data; int /*<<< orphan*/  prev_d_len; } ;

/* Variables and functions */
 size_t OPAL_GENKEY ; 
 int OPAL_UID_LENGTH ; 
 int FUNC0 (struct opal_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * opalmethod ; 
 int /*<<< orphan*/  parse_and_check_status ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct opal_dev *dev, void *data)
{
	u8 uid[OPAL_UID_LENGTH];
	int err;

	FUNC3(uid, dev->prev_data, FUNC4(sizeof(uid), dev->prev_d_len));
	FUNC2(dev->prev_data);
	dev->prev_data = NULL;

	err = FUNC0(dev, uid, opalmethod[OPAL_GENKEY]);

	if (err) {
		FUNC5("Error building gen key command\n");
		return err;

	}

	return FUNC1(dev, parse_and_check_status);
}