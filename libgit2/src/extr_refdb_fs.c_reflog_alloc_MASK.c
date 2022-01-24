#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* ref_name; int /*<<< orphan*/  entries; } ;
typedef  TYPE_1__ git_reflog ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(git_reflog **reflog, const char *name)
{
	git_reflog *log;

	*reflog = NULL;

	log = FUNC1(1, sizeof(git_reflog));
	FUNC0(log);

	log->ref_name = FUNC3(name);
	FUNC0(log->ref_name);

	if (FUNC4(&log->entries, 0, NULL) < 0) {
		FUNC2(log->ref_name);
		FUNC2(log);
		return -1;
	}

	*reflog = log;

	return 0;
}