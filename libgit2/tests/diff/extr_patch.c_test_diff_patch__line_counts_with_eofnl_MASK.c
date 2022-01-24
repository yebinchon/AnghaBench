#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_10__ {char* ptr; int size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int,size_t*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*) ; 
 char* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 

void FUNC21(void)
{
	git_config *cfg;
	git_buf content = GIT_BUF_INIT;
	const char *end;
	git_index *index;
	const char *expected =
		/* below is pasted output of 'git diff' with fn context removed */
		"diff --git a/songof7cities.txt b/songof7cities.txt\n"
		"index 378a7d9..3d0154e 100644\n"
		"--- a/songof7cities.txt\n"
		"+++ b/songof7cities.txt\n"
		"@@ -42,7 +42,7 @@ With peoples undefeated of the dark, enduring blood.\n"
		" \n"
		" To the sound of trumpets shall their seed restore my Cities\n"
		" Wealthy and well-weaponed, that once more may I behold\n"
		"-All the world go softly when it walks before my Cities,\n"
		"+#All the world go softly when it walks before my Cities,\n"
		" And the horses and the chariots fleeing from them as of old!\n"
		" \n"
		"   -- Rudyard Kipling\n"
		"\\ No newline at end of file\n";
	size_t expected_sizes[3] = { 115, 119 + 115 + 114, 119 + 115 + 114 + 71 };

	g_repo = FUNC4("renames");

	FUNC2(FUNC12(&cfg));
	FUNC19(g_repo, cfg);
	FUNC11(cfg);

	FUNC18(g_repo, false);

	FUNC2(FUNC13(&content, "renames/songof7cities.txt"));

	/* remove first line */

	end = FUNC6(&content) + FUNC8(&content, '\n') + 1;
	FUNC5(&content, end);
	FUNC3("renames/songof7cities.txt", content.ptr);

	FUNC0(g_repo, 1, 0, 1, 3, NULL, NULL);

	/* remove trailing whitespace */

	FUNC10(&content);
	FUNC3("renames/songof7cities.txt", content.ptr);

	FUNC0(g_repo, 2, 1, 2, 6, NULL, NULL);

	/* add trailing whitespace */

	FUNC2(FUNC17(&index, g_repo));
	FUNC2(FUNC14(index, "songof7cities.txt"));
	FUNC2(FUNC16(index));
	FUNC15(index);

	FUNC2(FUNC9(&content, '\n'));
	FUNC3("renames/songof7cities.txt", content.ptr);

	FUNC0(g_repo, 1, 1, 1, 3, NULL, NULL);

	/* no trailing whitespace as context line */

	{
		/* walk back a couple lines, make space and insert char */
		char *scan = content.ptr + content.size;
		int i;

		for (i = 0; i < 5; ++i) {
			for (--scan; scan > content.ptr && *scan != '\n'; --scan)
				/* seek to prev \n */;
		}
		FUNC1(scan > content.ptr);

		/* overwrite trailing \n with right-shifted content */
		FUNC20(scan + 1, scan, content.size - (scan - content.ptr) - 1);
		/* insert '#' char into space we created */
		scan[1] = '#';
	}
	FUNC3("renames/songof7cities.txt", content.ptr);

	FUNC0(
		g_repo, 1, 1, 1, 6, expected_sizes, expected);

	FUNC7(&content);
}