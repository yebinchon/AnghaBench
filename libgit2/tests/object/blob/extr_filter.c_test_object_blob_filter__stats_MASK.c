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
typedef  int /*<<< orphan*/  stats ;
typedef  int /*<<< orphan*/  git_buf_text_stats ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int CRLF_NUM_TEST_OBJECTS ; 
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_crlf_filtered_stats ; 
 int /*<<< orphan*/ * g_crlf_oids ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC8(void)
{
	int i;
	git_blob *blob;
	git_buf buf = GIT_BUF_INIT;
	git_buf_text_stats stats;

	for (i = 0; i < CRLF_NUM_TEST_OBJECTS; i++) {
		FUNC1(FUNC4(&blob, g_repo, &g_crlf_oids[i]));
		FUNC1(FUNC2(&buf, blob));
		FUNC6(&stats, &buf, false);
		FUNC0(
			0, FUNC7(&g_crlf_filtered_stats[i], &stats, sizeof(stats)));
		FUNC3(blob);
	}

	FUNC5(&buf);
}