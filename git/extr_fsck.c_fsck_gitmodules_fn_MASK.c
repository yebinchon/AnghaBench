#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fsck_gitmodules_data {int /*<<< orphan*/  obj; int /*<<< orphan*/  options; int /*<<< orphan*/  ret; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCK_MSG_GITMODULES_NAME ; 
 int /*<<< orphan*/  FSCK_MSG_GITMODULES_PATH ; 
 int /*<<< orphan*/  FSCK_MSG_GITMODULES_URL ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*,char const**,int*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 char* FUNC6 (char const*,int) ; 

__attribute__((used)) static int FUNC7(const char *var, const char *value, void *vdata)
{
	struct fsck_gitmodules_data *data = vdata;
	const char *subsection, *key;
	int subsection_len;
	char *name;

	if (FUNC3(var, "submodule", &subsection, &subsection_len, &key) < 0 ||
	    !subsection)
		return 0;

	name = FUNC6(subsection, subsection_len);
	if (FUNC0(name) < 0)
		data->ret |= FUNC4(data->options, data->obj,
				    FSCK_MSG_GITMODULES_NAME,
				    "disallowed submodule name: %s",
				    name);
	if (!FUNC5(key, "url") && value &&
	    FUNC2(value))
		data->ret |= FUNC4(data->options, data->obj,
				    FSCK_MSG_GITMODULES_URL,
				    "disallowed submodule url: %s",
				    value);
	if (!FUNC5(key, "path") && value &&
	    FUNC2(value))
		data->ret |= FUNC4(data->options, data->obj,
				    FSCK_MSG_GITMODULES_PATH,
				    "disallowed submodule path: %s",
				    value);
	FUNC1(name);

	return 0;
}