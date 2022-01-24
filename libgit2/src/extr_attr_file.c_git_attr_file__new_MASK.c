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
typedef  int /*<<< orphan*/  git_attr_file_source ;
typedef  int /*<<< orphan*/  git_attr_file_entry ;
struct TYPE_7__ {int /*<<< orphan*/  source; int /*<<< orphan*/ * entry; int /*<<< orphan*/  pool; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ git_attr_file ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

int FUNC7(
	git_attr_file **out,
	git_attr_file_entry *entry,
	git_attr_file_source source)
{
	git_attr_file *attrs = FUNC2(1, sizeof(git_attr_file));
	FUNC0(attrs);

	if (FUNC5(&attrs->lock) < 0) {
		FUNC4(GIT_ERROR_OS, "failed to initialize lock");
		FUNC3(attrs);
		return -1;
	}

	FUNC6(&attrs->pool, 1);
	FUNC1(attrs);
	attrs->entry  = entry;
	attrs->source = source;
	*out = attrs;
	return 0;
}