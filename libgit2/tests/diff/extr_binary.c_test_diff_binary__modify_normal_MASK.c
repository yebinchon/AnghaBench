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
		"index bd474b2..9ac35ff 100644\n" \
		"Binary files a/binary.bin and b/binary.bin differ\n";

	repo = FUNC0("diff_format_email");
	FUNC1(
		"897d3af16ca9e420cd071b1c4541bd2b91d04c8c",
		"8d7523f6fcb2404257889abe0d96f093d9f524f9",
		&opts,
		expected);
}