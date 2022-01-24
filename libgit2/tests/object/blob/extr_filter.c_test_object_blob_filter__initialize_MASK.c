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
 int CRLF_NUM_TEST_OBJECTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * g_crlf_oids ; 
 int /*<<< orphan*/ * g_crlf_raw ; 
 scalar_t__* g_crlf_raw_len ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	int i;

	g_repo = FUNC1("empty_standard_repo");

	for (i = 0; i < CRLF_NUM_TEST_OBJECTS; i++) {
		if (g_crlf_raw_len[i] < 0)
			g_crlf_raw_len[i] = FUNC3(g_crlf_raw[i]);

		FUNC0(FUNC2(
			&g_crlf_oids[i], g_repo, g_crlf_raw[i], (size_t)g_crlf_raw_len[i]));
	}
}