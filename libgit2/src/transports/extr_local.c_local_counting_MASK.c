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
struct TYPE_2__ {int (* progress_cb ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  message_cb_payload; } ;
typedef  TYPE_1__ transport_local ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_PACKBUILDER_ADDING_OBJECTS ; 
 int GIT_PACKBUILDER_DELTAFICATION ; 
 int /*<<< orphan*/  compressing_objects_fmt ; 
 int /*<<< orphan*/  counting_objects_fmt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(int stage, unsigned int current, unsigned int total, void *payload)
{
	git_buf progress_info = GIT_BUF_INIT;
	transport_local *t = payload;
	int error;

	if (!t->progress_cb)
		return 0;

	if (stage == GIT_PACKBUILDER_ADDING_OBJECTS) {
		FUNC4(&progress_info, counting_objects_fmt, current);
	} else if (stage == GIT_PACKBUILDER_DELTAFICATION) {
		float perc = (((float) current) / total) * 100;
		FUNC4(&progress_info, compressing_objects_fmt, perc, current, total);
		if (current == total)
			FUNC4(&progress_info, ", done\n");
		else
			FUNC5(&progress_info, '\r');

	}

	if (FUNC3(&progress_info))
		return -1;

	error = t->progress_cb(FUNC0(&progress_info), (int)FUNC2(&progress_info), t->message_cb_payload);
	FUNC1(&progress_info);

	return error;
}