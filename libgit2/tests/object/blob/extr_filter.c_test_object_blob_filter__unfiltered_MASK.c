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
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int CRLF_NUM_TEST_OBJECTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_crlf_oids ; 
 int /*<<< orphan*/ * g_crlf_raw ; 
 scalar_t__* g_crlf_raw_len ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

void FUNC8(void)
{
	int i;
	git_blob *blob;

	for (i = 0; i < CRLF_NUM_TEST_OBJECTS; i++) {
		size_t raw_len = (size_t)g_crlf_raw_len[i];

		FUNC2(FUNC4(&blob, g_repo, &g_crlf_oids[i]));

		FUNC1(raw_len, (size_t)FUNC6(blob));
		FUNC0(
			0, FUNC7(g_crlf_raw[i], FUNC5(blob), raw_len));

		FUNC3(blob);
	}
}