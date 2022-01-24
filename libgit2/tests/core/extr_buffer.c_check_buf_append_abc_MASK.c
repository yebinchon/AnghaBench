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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void
FUNC7(
	const char* buf_a,
	const char* buf_b,
	const char* buf_c,
	const char* expected_ab,
	const char* expected_abc,
	const char* expected_abca,
	const char* expected_abcab,
	const char* expected_abcabc)
{
	git_buf buf = GIT_BUF_INIT;

	FUNC6(&buf, buf_a);
	FUNC0(FUNC4(&buf) == 0);
	FUNC1(buf_a, FUNC2(&buf));

	FUNC5(&buf, buf_b);
	FUNC0(FUNC4(&buf) == 0);
	FUNC1(expected_ab, FUNC2(&buf));

	FUNC5(&buf, buf_c);
	FUNC0(FUNC4(&buf) == 0);
	FUNC1(expected_abc, FUNC2(&buf));

	FUNC5(&buf, buf_a);
	FUNC0(FUNC4(&buf) == 0);
	FUNC1(expected_abca, FUNC2(&buf));

	FUNC5(&buf, buf_b);
	FUNC0(FUNC4(&buf) == 0);
	FUNC1(expected_abcab, FUNC2(&buf));

	FUNC5(&buf, buf_c);
	FUNC0(FUNC4(&buf) == 0);
	FUNC1(expected_abcabc, FUNC2(&buf));

	FUNC3(&buf);
}