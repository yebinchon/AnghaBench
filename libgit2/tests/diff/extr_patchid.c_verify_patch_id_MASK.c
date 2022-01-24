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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7(const char *diff_content, const char *expected_id)
{
	git_oid expected_oid, actual_oid;
	git_diff *diff;

	FUNC1(FUNC5(&expected_oid, expected_id));
	FUNC1(FUNC3(&diff, diff_content, FUNC6(diff_content)));
	FUNC1(FUNC4(&actual_oid, diff, NULL));

	FUNC0(&expected_oid, &actual_oid);

	FUNC2(diff);
}