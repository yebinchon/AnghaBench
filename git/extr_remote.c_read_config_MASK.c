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
struct TYPE_2__ {scalar_t__ have_repository; } ;

/* Variables and functions */
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * current_branch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  handle_config ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (char const*,char*,char const**) ; 
 TYPE_1__* startup_info ; 

__attribute__((used)) static void FUNC5(void)
{
	static int loaded;
	int flag;

	if (loaded)
		return;
	loaded = 1;

	current_branch = NULL;
	if (startup_info->have_repository) {
		const char *head_ref = FUNC3("HEAD", 0, NULL, &flag);
		if (head_ref && (flag & REF_ISSYMREF) &&
		    FUNC4(head_ref, "refs/heads/", &head_ref)) {
			current_branch = FUNC2(head_ref, 0);
		}
	}
	FUNC1(handle_config, NULL);
	FUNC0();
}