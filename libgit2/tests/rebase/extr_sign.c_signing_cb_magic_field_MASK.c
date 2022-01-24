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
 int GIT_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  expected_commit_content ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 scalar_t__ FUNC6 (char const*) ; 

int FUNC7(
	git_buf *signature,
	git_buf *signature_field,
	const char *commit_content,
	void *payload)
{
	const char *signature_content = "magic word: pretty please";
	const char *signature_field_content = "magicsig";

	FUNC0(false, FUNC4(signature));
	FUNC0(false, FUNC4(signature_field));
	FUNC2(expected_commit_content, commit_content);
	FUNC1(NULL, payload);

	FUNC3(FUNC5(signature, signature_content,
		FUNC6(signature_content) + 1));
	FUNC3(FUNC5(signature_field, signature_field_content,
		FUNC6(signature_field_content) + 1));

	return GIT_OK;
}