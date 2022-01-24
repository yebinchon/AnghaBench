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
 int GIT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  expected_commit_content ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(
	git_buf *signature,
	git_buf *signature_field,
	const char *commit_content,
	void *payload)
{
	FUNC0(false, FUNC3(signature));
	FUNC0(false, FUNC3(signature_field));
	FUNC2(expected_commit_content, commit_content);
	FUNC1(NULL, payload);
	return GIT_PASSTHROUGH;
}