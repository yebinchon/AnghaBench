#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zeroed ;
typedef  int /*<<< orphan*/  git_filter_list ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  git_blob ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int CRLF_NUM_TEST_OBJECTS ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_FILTER_TO_ODB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__* g_crlf_filtered ; 
 int /*<<< orphan*/ * g_crlf_oids ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC16(void)
{
	git_filter_list *fl = NULL;
	git_config *cfg;
	int i;
	git_blob *blob;
	git_buf out = GIT_BUF_INIT, zeroed;

	FUNC4(FUNC13(&cfg, g_repo));
	FUNC0(cfg);

	FUNC5(g_repo);
	FUNC3("empty_standard_repo/.gitattributes", "*.txt text\n");

	FUNC4(FUNC12(
		&fl, g_repo, NULL, "filename.txt", GIT_FILTER_TO_ODB, 0));
	FUNC0(fl != NULL);

	for (i = 0; i < CRLF_NUM_TEST_OBJECTS; i++) {
		FUNC4(FUNC7(&blob, g_repo, &g_crlf_oids[i]));

		/* try once with allocated blob */
		FUNC4(FUNC10(&out, fl, blob));
		FUNC2(g_crlf_filtered[i].size, out.size);
		FUNC1(
			0, FUNC14(out.ptr, g_crlf_filtered[i].ptr, out.size));

		/* try again with zeroed blob */
		FUNC15(&zeroed, 0, sizeof(zeroed));
		FUNC4(FUNC10(&zeroed, fl, blob));
		FUNC2(g_crlf_filtered[i].size, zeroed.size);
		FUNC1(
			0, FUNC14(zeroed.ptr, g_crlf_filtered[i].ptr, zeroed.size));
		FUNC8(&zeroed);

		FUNC6(blob);
	}

	FUNC11(fl);
	FUNC8(&out);
	FUNC9(cfg);
}