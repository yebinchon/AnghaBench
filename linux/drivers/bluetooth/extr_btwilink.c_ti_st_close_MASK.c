#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ti_st {int /*<<< orphan*/ * st_write; } ;
struct hci_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  chnl_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int MAX_BT_CHNL_IDS ; 
 struct ti_st* FUNC1 (struct hci_dev*) ; 
 int FUNC2 (TYPE_1__*) ; 
 TYPE_1__* ti_st_proto ; 

__attribute__((used)) static int FUNC3(struct hci_dev *hdev)
{
	int err, i;
	struct ti_st *hst = FUNC1(hdev);

	for (i = MAX_BT_CHNL_IDS-1; i >= 0; i--) {
		err = FUNC2(&ti_st_proto[i]);
		if (err)
			FUNC0("st_unregister(%d) failed with error %d",
					ti_st_proto[i].chnl_id, err);
	}

	hst->st_write = NULL;

	return err;
}