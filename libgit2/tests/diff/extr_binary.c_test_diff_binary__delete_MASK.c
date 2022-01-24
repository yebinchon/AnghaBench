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
struct TYPE_4__ {int /*<<< orphan*/  id_abbrev; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_diff_options ;

/* Variables and functions */
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_SHOW_BINARY ; 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,TYPE_1__*,char const*) ; 

void FUNC2(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	const char *expected =
		"diff --git a/binary.bin b/binary.bin\n" \
		"deleted file mode 100644\n" \
		"index bd474b2519cc15eab801ff851cc7d50f0dee49a1..0000000000000000000000000000000000000000\n" \
		"GIT binary patch\n" \
		"literal 0\n" \
		"Hc$@<O00001\n" \
		"\n" \
		"literal 3\n" \
		"Kc${Nk-~s>u4FC%O\n" \
		"\n";

	opts.flags = GIT_DIFF_SHOW_BINARY;
	opts.id_abbrev = GIT_OID_HEXSZ;

	repo = FUNC0("diff_format_email");
	FUNC1(
		"897d3af16ca9e420cd071b1c4541bd2b91d04c8c",
		"873806f6f27e631eb0b23e4b56bea2bfac14a373",
		&opts,
		expected);
}