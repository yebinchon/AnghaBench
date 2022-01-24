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
struct opal_dev {int dummy; } ;
typedef  int /*<<< orphan*/  lr_buffer ;

/* Variables and functions */
 int ERANGE ; 
 int OPAL_ENDLIST ; 
 int OPAL_ENDNAME ; 
 int OPAL_INVAL_PARAM ; 
#define  OPAL_LK 130 
 int OPAL_READLOCKED ; 
#define  OPAL_RO 129 
#define  OPAL_RW 128 
 size_t OPAL_SET ; 
 int OPAL_STARTLIST ; 
 int OPAL_STARTNAME ; 
 int OPAL_UID_LENGTH ; 
 int OPAL_VALUES ; 
 int OPAL_WRITELOCKED ; 
 int /*<<< orphan*/  FUNC0 (int*,struct opal_dev*,int) ; 
 scalar_t__ FUNC1 (int*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct opal_dev*,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * opalmethod ; 
 int /*<<< orphan*/  parse_and_check_status ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct opal_dev *dev, void *data)
{
	u8 lr_buffer[OPAL_UID_LENGTH];
	struct opal_lock_unlock *lkul = data;
	u8 read_locked = 1, write_locked = 1;
	int err = 0;

	if (FUNC1(lr_buffer, sizeof(lr_buffer),
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
		FUNC4("Tried to set an invalid locking state... returning to uland\n");
		return OPAL_INVAL_PARAM;
	}

	err = FUNC2(dev, lr_buffer, opalmethod[OPAL_SET]);

	FUNC0(&err, dev, OPAL_STARTNAME);
	FUNC0(&err, dev, OPAL_VALUES);
	FUNC0(&err, dev, OPAL_STARTLIST);

	FUNC0(&err, dev, OPAL_STARTNAME);
	FUNC0(&err, dev, OPAL_READLOCKED);
	FUNC0(&err, dev, read_locked);
	FUNC0(&err, dev, OPAL_ENDNAME);

	FUNC0(&err, dev, OPAL_STARTNAME);
	FUNC0(&err, dev, OPAL_WRITELOCKED);
	FUNC0(&err, dev, write_locked);
	FUNC0(&err, dev, OPAL_ENDNAME);

	FUNC0(&err, dev, OPAL_ENDLIST);
	FUNC0(&err, dev, OPAL_ENDNAME);

	if (err) {
		FUNC4("Error building SET command.\n");
		return err;
	}

	return FUNC3(dev, parse_and_check_status);
}