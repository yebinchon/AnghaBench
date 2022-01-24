#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mode; } ;
struct TYPE_7__ {int status; TYPE_1__ new_file; } ;
typedef  TYPE_2__ git_diff_delta ;
typedef  int /*<<< orphan*/  checkout_data ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CHECKOUT_ACTION__NONE ; 
 int /*<<< orphan*/  CONFLICT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_NOTIFY_DIRTY ; 
#define  GIT_DELTA_ADDED 132 
#define  GIT_DELTA_DELETED 131 
#define  GIT_DELTA_MODIFIED 130 
#define  GIT_DELTA_TYPECHANGE 129 
#define  GIT_DELTA_UNMODIFIED 128 
 int /*<<< orphan*/  GIT_FILEMODE_TREE ; 
 int /*<<< orphan*/  NONE ; 
 int /*<<< orphan*/  RECREATE_MISSING ; 
 int /*<<< orphan*/  REMOVE ; 
 int /*<<< orphan*/  SAFE ; 
 int /*<<< orphan*/  UPDATE_BLOB ; 
 int FUNC1 (int*,int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(
	int *action,
	checkout_data *data,
	const git_diff_delta *delta)
{
	int error = 0;

	*action = CHECKOUT_ACTION__NONE;

	switch (delta->status) {
	case GIT_DELTA_UNMODIFIED: /* case 12 */
		error = FUNC2(data, GIT_CHECKOUT_NOTIFY_DIRTY, delta, NULL);
		if (error)
			return error;
		*action = FUNC0(RECREATE_MISSING, UPDATE_BLOB, NONE);
		break;
	case GIT_DELTA_ADDED:    /* case 2 or 28 (and 5 but not really) */
		*action = FUNC0(SAFE, UPDATE_BLOB, NONE);
		break;
	case GIT_DELTA_MODIFIED: /* case 13 (and 35 but not really) */
		*action = FUNC0(RECREATE_MISSING, UPDATE_BLOB, CONFLICT);
		break;
	case GIT_DELTA_TYPECHANGE: /* case 21 (B->T) and 28 (T->B)*/
		if (delta->new_file.mode == GIT_FILEMODE_TREE)
			*action = FUNC0(SAFE, UPDATE_BLOB, NONE);
		break;
	case GIT_DELTA_DELETED: /* case 8 or 25 */
		*action = FUNC0(SAFE, REMOVE, NONE);
		break;
	default: /* impossible */
		break;
	}

	return FUNC1(action, data, delta, NULL);
}