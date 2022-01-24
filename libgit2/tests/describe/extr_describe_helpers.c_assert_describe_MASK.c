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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_describe_result ;
typedef  int /*<<< orphan*/  git_describe_options ;
typedef  int /*<<< orphan*/  git_describe_format_options ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(
	const char *expected_output,
	const char *revparse_spec,
	git_repository *repo,
	git_describe_options *opts,
	git_describe_format_options *fmt_opts)
{
	git_object *object;
	git_buf label = GIT_BUF_INIT;
	git_describe_result *result;

	FUNC0(FUNC8(&object, repo, revparse_spec));

	FUNC0(FUNC4(&result, object, opts));
	FUNC0(FUNC5(&label, result, fmt_opts));

	FUNC1(FUNC9(expected_output, FUNC2(&label), 0));

	FUNC6(result);
	FUNC7(object);
	FUNC3(&label);
}