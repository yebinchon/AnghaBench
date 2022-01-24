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
typedef  int u8 ;
struct TYPE_3__ {int /*<<< orphan*/  lr; } ;
struct TYPE_4__ {TYPE_1__ opal_key; } ;
struct opal_lock_unlock {int l_state; TYPE_2__ session; } ;
struct opal_dev {int /*<<< orphan*/  comid; } ;
typedef  int /*<<< orphan*/  lr_buffer ;

/* Variables and functions */
 int ERANGE ; 
 int OPAL_INVAL_PARAM ; 
#define  OPAL_LK 130 
#define  OPAL_RO 129 
#define  OPAL_RW 128 
 int OPAL_UID_LENGTH ; 
 scalar_t__ FUNC0 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct opal_dev*) ; 
 int FUNC2 (struct opal_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct opal_dev*,int*,int,int,int,int) ; 
 int /*<<< orphan*/  parse_and_check_status ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct opal_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct opal_dev *dev, void *data)
{
	u8 lr_buffer[OPAL_UID_LENGTH];
	u8 read_locked = 1, write_locked = 1;
	struct opal_lock_unlock *lkul = data;
	int ret;

	FUNC1(dev);
	FUNC5(dev, dev->comid);

	if (FUNC0(lr_buffer, sizeof(lr_buffer),
				lkul->session.opal_key.lr) < 0)
		return -ERANGE;

	switch (lkul->l_state) {
	case OPAL_RO:
		read_locked = 0;
		write_locked = 1;
		break;
	case OPAL_RW:
		read_locked = 0;
		write_locked = 0;
		break;
	case OPAL_LK:
		/* vars are initialized to locked */
		break;
	default:
		FUNC4("Tried to set an invalid locking state.\n");
		return OPAL_INVAL_PARAM;
	}
	ret = FUNC3(dev, lr_buffer, 1, 1,
					read_locked, write_locked);

	if (ret < 0) {
		FUNC4("Error building SET command.\n");
		return ret;
	}

	return FUNC2(dev, parse_and_check_status);
}