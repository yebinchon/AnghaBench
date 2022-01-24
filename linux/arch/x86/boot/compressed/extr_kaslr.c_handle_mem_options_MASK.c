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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  mem_limit ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char**) ; 
 char* FUNC7 (char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 size_t FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
	char *args = (char *)FUNC2();
	size_t len = FUNC11((char *)args);
	char *tmp_cmdline;
	char *param, *val;
	u64 mem_size;

	if (!FUNC12(args, "memmap=") && !FUNC12(args, "mem=") &&
		!FUNC12(args, "hugepages"))
		return;

	tmp_cmdline = FUNC3(len + 1);
	if (!tmp_cmdline)
		FUNC0("Failed to allocate space for tmp_cmdline");

	FUNC5(tmp_cmdline, args, len);
	tmp_cmdline[len] = 0;
	args = tmp_cmdline;

	/* Chew leading spaces */
	args = FUNC9(args);

	while (*args) {
		args = FUNC7(args, &param, &val);
		/* Stop at -- */
		if (!val && FUNC10(param, "--") == 0) {
			FUNC13("Only '--' specified in cmdline");
			goto out;
		}

		if (!FUNC10(param, "memmap")) {
			FUNC4(val);
		} else if (FUNC12(param, "hugepages")) {
			FUNC8(param, val);
		} else if (!FUNC10(param, "mem")) {
			char *p = val;

			if (!FUNC10(p, "nopentium"))
				continue;
			mem_size = FUNC6(p, &p);
			if (mem_size == 0)
				goto out;

			mem_limit = mem_size;
		}
	}

out:
	FUNC1(tmp_cmdline);
	return;
}