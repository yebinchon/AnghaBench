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
typedef  int /*<<< orphan*/  git_config_entries ;
struct TYPE_3__ {int /*<<< orphan*/  values_mutex; int /*<<< orphan*/ * entries; } ;
typedef  TYPE_1__ config_file_backend ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(git_config_entries **out, config_file_backend *b)
{
	int error;

	if ((error = FUNC2(&b->values_mutex)) < 0) {
		FUNC1(GIT_ERROR_OS, "failed to lock config backend");
		return error;
	}

	FUNC0(b->entries);
	*out = b->entries;

	FUNC3(&b->values_mutex);

	return 0;
}