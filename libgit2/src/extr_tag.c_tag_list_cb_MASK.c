#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  taglist; int /*<<< orphan*/ * pattern; } ;
typedef  TYPE_1__ tag_filter_data ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int GIT_REFS_TAGS_DIR_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const char *tag_name, git_oid *oid, void *data)
{
	tag_filter_data *filter = (tag_filter_data *)data;
	FUNC1(oid);

	if (!*filter->pattern ||
	    FUNC4(filter->pattern, tag_name + GIT_REFS_TAGS_DIR_LEN, 0) == 0)
	{
		char *matched = FUNC2(tag_name + GIT_REFS_TAGS_DIR_LEN);
		FUNC0(matched);

		return FUNC3(filter->taglist, matched);
	}

	return 0;
}