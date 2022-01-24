#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_index_entry ;
struct TYPE_5__ {int status; } ;
typedef  TYPE_1__ git_diff_delta ;
typedef  int /*<<< orphan*/  checkout_data ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CHECKOUT_ACTION__NONE ; 
 int /*<<< orphan*/  CONFLICT ; 
 int /*<<< orphan*/  FORCE ; 
 int /*<<< orphan*/  GIT_CHECKOUT_NOTIFY_DIRTY ; 
#define  GIT_DELTA_ADDED 132 
#define  GIT_DELTA_DELETED 131 
#define  GIT_DELTA_MODIFIED 130 
#define  GIT_DELTA_TYPECHANGE 129 
#define  GIT_DELTA_UNMODIFIED 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NONE ; 
 int /*<<< orphan*/  REMOVE ; 
 int /*<<< orphan*/  REMOVE_AND_UPDATE ; 
 int FUNC2 (int*,int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(
	int *action,
	checkout_data *data,
	const git_diff_delta *delta,
	const git_index_entry *wd)
{
	*action = CHECKOUT_ACTION__NONE;

	switch (delta->status) {
	case GIT_DELTA_UNMODIFIED:
		/* should show delta as dirty / deleted */
		FUNC1(
			FUNC3(data, GIT_CHECKOUT_NOTIFY_DIRTY, delta, wd) );
		*action = FUNC0(FORCE, REMOVE_AND_UPDATE, NONE);
		break;
	case GIT_DELTA_ADDED:
	case GIT_DELTA_MODIFIED:
		*action = FUNC0(FORCE, REMOVE_AND_UPDATE, CONFLICT);
		break;
	case GIT_DELTA_DELETED:
		*action = FUNC0(FORCE, REMOVE, CONFLICT);
		break;
	case GIT_DELTA_TYPECHANGE:
		/* not 100% certain about this... */
		*action = FUNC0(FORCE, REMOVE_AND_UPDATE, CONFLICT);
		break;
	default: /* impossible */
		break;
	}

	return FUNC2(action, data, delta, wd);
}