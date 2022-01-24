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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_obj ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

void FUNC4(void)
{
	FUNC0(":/");
	FUNC0("point_to_blob:readme.txt");
	FUNC1(FUNC2(&g_obj, g_repo, ":2:README")); /* Not implemented  */

	FUNC3(":/not found in any commit", NULL);
	FUNC3("subtrees:ab/42.txt", NULL);
	FUNC3("subtrees:ab/4.txt/nope", NULL);
	FUNC3("subtrees:nope", NULL);
	FUNC3("test/master^1:branch_file.txt", NULL);

	/* From tags */
	FUNC3("test:readme.txt", "0266163a49e280c4f5ed1e08facd36a2bd716bcf");
	FUNC3("tags/test:readme.txt", "0266163a49e280c4f5ed1e08facd36a2bd716bcf");
	FUNC3("e90810b:readme.txt", "0266163a49e280c4f5ed1e08facd36a2bd716bcf");
	FUNC3("tags/e90810b:readme.txt", "0266163a49e280c4f5ed1e08facd36a2bd716bcf");

	/* From commits */
	FUNC3("a65f:branch_file.txt", "3697d64be941a53d4ae8f6a271e4e3fa56b022cc");

	/* From trees */
	FUNC3("a65f^{tree}:branch_file.txt", "3697d64be941a53d4ae8f6a271e4e3fa56b022cc");
	FUNC3("944c:branch_file.txt", "3697d64be941a53d4ae8f6a271e4e3fa56b022cc");

	/* Retrieving trees */
	FUNC3("master:", "944c0f6e4dfa41595e6eb3ceecdb14f50fe18162");
	FUNC3("subtrees:", "ae90f12eea699729ed24555e40b9fd669da12a12");
	FUNC3("subtrees:ab", "f1425cef211cc08caa31e7b545ffb232acb098c3");
	FUNC3("subtrees:ab/", "f1425cef211cc08caa31e7b545ffb232acb098c3");

	/* Retrieving blobs */
	FUNC3("subtrees:ab/4.txt", "d6c93164c249c8000205dd4ec5cbca1b516d487f");
	FUNC3("subtrees:ab/de/fgh/1.txt", "1f67fc4386b2d171e0d21be1c447e12660561f9b");
	FUNC3("master:README", "a8233120f6ad708f843d861ce2b7228ec4e3dec6");
	FUNC3("master:new.txt", "a71586c1dfe8a71c6cbf6c129f404c5642ff31bd");
	FUNC3(":/Merge", "a4a7dce85cf63874e984719f4fdd239f5145052f");
	FUNC3(":/one", "c47800c7266a2be04c571c04d5a6614691ea99bd");
	FUNC3(":/packed commit t", "41bc8c69075bbdb46c5c6f0566cc8cc5b46e8bd9");
	FUNC3("test/master^2:branch_file.txt", "45b983be36b73c0788dc9cbcb76cbb80fc7bb057");
	FUNC3("test/master@{1}:branch_file.txt", "3697d64be941a53d4ae8f6a271e4e3fa56b022cc");
}