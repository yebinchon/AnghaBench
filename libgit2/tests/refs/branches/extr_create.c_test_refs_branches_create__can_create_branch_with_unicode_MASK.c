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
 unsigned int FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/ * branch ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target ; 

void FUNC15(void)
{
	const char *nfc = "\xC3\x85\x73\x74\x72\xC3\xB6\x6D";
	const char *nfd = "\x41\xCC\x8A\x73\x74\x72\x6F\xCC\x88\x6D";
	const char *emoji = "\xF0\x9F\x8D\xB7";
	const char *names[] = { nfc, nfd, emoji };
	const char *alt[] = { nfd, nfc, NULL };
	const char *expected[] = { nfc, nfd, emoji };
	unsigned int i;
	bool fs_decompose_unicode =
		FUNC10(FUNC13(repo));

	FUNC14(&target, repo);

	if (FUNC4(repo, "core.precomposeunicode"))
		expected[1] = nfc;
	/* test decomp. because not all Mac filesystems decompose unicode */
	else if (fs_decompose_unicode)
		expected[0] = nfd;

	for (i = 0; i < FUNC0(names); ++i) {
		const char *name;
		FUNC3(FUNC5(
			&branch, repo, names[i], target, 0));
		FUNC3(FUNC9(
			FUNC12(branch), FUNC8(target)));

		FUNC3(FUNC7(&name, branch));
		FUNC2(expected[i], name);
		FUNC1(expected[i], names[i]);
		if (fs_decompose_unicode && alt[i])
			FUNC1(expected[i], alt[i]);

		FUNC3(FUNC6(branch));
		FUNC11(branch);
		branch = NULL;
	}
}