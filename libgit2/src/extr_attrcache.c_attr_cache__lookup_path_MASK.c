#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* value; } ;
typedef  TYPE_1__ git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 char* FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC7(
	char **out, git_config *cfg, const char *key, const char *fallback)
{
	git_buf buf = GIT_BUF_INIT;
	int error;
	git_config_entry *entry = NULL;

	*out = NULL;

	if ((error = FUNC3(&entry, cfg, key, false)) < 0)
		return error;

	if (entry) {
		const char *cfgval = entry->value;

		/* expand leading ~/ as needed */
		if (cfgval && cfgval[0] == '~' && cfgval[1] == '/') {
			if (! (error = FUNC5(&buf, &cfgval[2])))
				*out = FUNC1(&buf);
		} else if (cfgval) {
			*out = FUNC0(cfgval);
		}
	}
	else if (!FUNC6(&buf, fallback)) {
		*out = FUNC1(&buf);
	}

	FUNC4(entry);
	FUNC2(&buf);

	return error;
}