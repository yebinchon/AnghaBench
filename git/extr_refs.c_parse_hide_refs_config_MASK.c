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
struct TYPE_4__ {int strdup_strings; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 TYPE_1__* hide_refs ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (char*) ; 
 TYPE_1__* FUNC5 (int,int) ; 
 char* FUNC6 (char const*) ; 

int FUNC7(const char *var, const char *value, const char *section)
{
	const char *key;
	if (!FUNC2("transfer.hiderefs", var) ||
	    (!FUNC1(var, section, NULL, NULL, &key) &&
	     !FUNC2(key, "hiderefs"))) {
		char *ref;
		int len;

		if (!value)
			return FUNC0(var);
		ref = FUNC6(value);
		len = FUNC4(ref);
		while (len && ref[len - 1] == '/')
			ref[--len] = '\0';
		if (!hide_refs) {
			hide_refs = FUNC5(1, sizeof(*hide_refs));
			hide_refs->strdup_strings = 1;
		}
		FUNC3(hide_refs, ref);
	}
	return 0;
}