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
typedef  int /*<<< orphan*/  git_diff_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ *,char const*) ; 

void FUNC2(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	const char *expected =
		"diff --git a/binary.bin b/binary.bin\n" \
		"new file mode 100644\n" \
		"index 0000000..bd474b2\n" \
		"Binary files /dev/null and b/binary.bin differ\n";

	repo = FUNC0("diff_format_email");
	FUNC1(
		"873806f6f27e631eb0b23e4b56bea2bfac14a373",
		"897d3af16ca9e420cd071b1c4541bd2b91d04c8c",
		&opts,
		expected);
}