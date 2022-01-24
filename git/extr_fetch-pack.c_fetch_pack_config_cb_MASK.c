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
struct TYPE_3__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ fsck_msg_types ; 
 scalar_t__ FUNC1 (char const**,char const*,char const*) ; 
 int FUNC2 (char const*,char const*,void*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 scalar_t__ FUNC4 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char,char const*,...) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

__attribute__((used)) static int FUNC8(const char *var, const char *value, void *cb)
{
	if (FUNC6(var, "fetch.fsck.skiplist") == 0) {
		const char *path;

		if (FUNC1(&path, var, value))
			return 1;
		FUNC5(&fsck_msg_types, "%cskiplist=%s",
			fsck_msg_types.len ? ',' : '=', path);
		FUNC0((char *)path);
		return 0;
	}

	if (FUNC4(var, "fetch.fsck.", &var)) {
		if (FUNC3(var, value))
			FUNC5(&fsck_msg_types, "%c%s=%s",
				fsck_msg_types.len ? ',' : '=', var, value);
		else
			FUNC7("Skipping unknown msg id '%s'", var);
		return 0;
	}

	return FUNC2(var, value, cb);
}