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
typedef  scalar_t__ git_object_t ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int GIT_EINVALIDSPEC ; 
 scalar_t__ GIT_OBJECT_INVALID ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(git_object **out, git_object *obj, const char *curly_braces_content)
{
	git_object_t expected_type;

	if (*curly_braces_content == '\0')
		return FUNC0(out, obj);

	if (*curly_braces_content == '/')
		return FUNC4(out, FUNC2(obj), FUNC1(obj), curly_braces_content + 1);

	expected_type = FUNC5(curly_braces_content);

	if (expected_type == GIT_OBJECT_INVALID)
		return GIT_EINVALIDSPEC;

	return FUNC3(out, obj, expected_type);
}