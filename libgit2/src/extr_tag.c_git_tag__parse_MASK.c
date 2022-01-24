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
typedef  int /*<<< orphan*/  git_tag ;
typedef  int /*<<< orphan*/  git_odb_object ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 

int FUNC3(void *_tag, git_odb_object *odb_obj)
{
	git_tag *tag = _tag;
	const char *buffer = FUNC0(odb_obj);
	const char *buffer_end = buffer + FUNC1(odb_obj);

	return FUNC2(tag, buffer, buffer_end);
}