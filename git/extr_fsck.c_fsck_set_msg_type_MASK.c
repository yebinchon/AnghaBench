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
struct fsck_options {int* msg_type; } ;
struct TYPE_2__ {scalar_t__ msg_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int FSCK_ERROR ; 
 scalar_t__ FSCK_FATAL ; 
 int FSCK_MSG_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int FUNC2 (int,struct fsck_options*) ; 
 TYPE_1__* msg_id_info ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 

void FUNC5(struct fsck_options *options,
		const char *msg_id, const char *msg_type)
{
	int id = FUNC3(msg_id), type;

	if (id < 0)
		FUNC1("Unhandled message id: %s", msg_id);
	type = FUNC4(msg_type);

	if (type != FSCK_ERROR && msg_id_info[id].msg_type == FSCK_FATAL)
		FUNC1("Cannot demote %s to %s", msg_id, msg_type);

	if (!options->msg_type) {
		int i;
		int *msg_type;
		FUNC0(msg_type, FSCK_MSG_MAX);
		for (i = 0; i < FSCK_MSG_MAX; i++)
			msg_type[i] = FUNC2(i, options);
		options->msg_type = msg_type;
	}

	options->msg_type[id] = type;
}