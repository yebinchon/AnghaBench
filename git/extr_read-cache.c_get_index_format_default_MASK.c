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
struct TYPE_2__ {unsigned int index_version; } ;
struct repository {TYPE_1__ settings; } ;

/* Variables and functions */
 unsigned int INDEX_FORMAT_DEFAULT ; 
 unsigned int INDEX_FORMAT_LB ; 
 unsigned int INDEX_FORMAT_UB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*) ; 
 unsigned int FUNC3 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC5(struct repository *r)
{
	char *envversion = FUNC1("GIT_INDEX_VERSION");
	char *endp;
	unsigned int version = INDEX_FORMAT_DEFAULT;

	if (!envversion) {
		FUNC2(r);

		if (r->settings.index_version >= 0)
			version = r->settings.index_version;
		if (version < INDEX_FORMAT_LB || INDEX_FORMAT_UB < version) {
			FUNC4(FUNC0("index.version set, but the value is invalid.\n"
				  "Using version %i"), INDEX_FORMAT_DEFAULT);
			return INDEX_FORMAT_DEFAULT;
		}
		return version;
	}

	version = FUNC3(envversion, &endp, 10);
	if (*endp ||
	    version < INDEX_FORMAT_LB || INDEX_FORMAT_UB < version) {
		FUNC4(FUNC0("GIT_INDEX_VERSION set, but the value is invalid.\n"
			  "Using version %i"), INDEX_FORMAT_DEFAULT);
		version = INDEX_FORMAT_DEFAULT;
	}
	return version;
}