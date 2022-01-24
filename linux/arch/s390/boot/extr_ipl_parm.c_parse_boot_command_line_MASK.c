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

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_RANDOMIZE_BASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  command_line_buf ; 
 int /*<<< orphan*/  early_command_line ; 
 scalar_t__ kaslr_enabled ; 
 int FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  memory_end ; 
 int memory_end_set ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char**,char**) ; 
 int noexec_disabled ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmalloc_size ; 

void FUNC9(void)
{
	char *param, *val;
	bool enabled;
	char *args;
	int rc;

	kaslr_enabled = FUNC0(CONFIG_RANDOMIZE_BASE);
	args = FUNC8(command_line_buf, early_command_line);
	while (*args) {
		args = FUNC4(args, &param, &val);

		if (!FUNC7(param, "mem") && val) {
			memory_end = FUNC5(FUNC2(val, NULL), PAGE_SIZE);
			memory_end_set = 1;
		}

		if (!FUNC7(param, "vmalloc") && val)
			vmalloc_size = FUNC6(FUNC2(val, NULL), PAGE_SIZE);

		if (!FUNC7(param, "noexec")) {
			rc = FUNC1(val, &enabled);
			if (!rc && !enabled)
				noexec_disabled = 1;
		}

		if (!FUNC7(param, "facilities") && val)
			FUNC3(val);

		if (!FUNC7(param, "nokaslr"))
			kaslr_enabled = 0;
	}
}