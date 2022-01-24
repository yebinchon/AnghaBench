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
struct cmt_fmt_map {char* user_format; scalar_t__ is_alias; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct cmt_fmt_map* commit_formats ; 
 int commit_formats_len ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cmt_fmt_map *FUNC3(const char *sought,
							const char *original,
							int num_redirections)
{
	struct cmt_fmt_map *found = NULL;
	size_t found_match_len = 0;
	int i;

	if (num_redirections >= commit_formats_len)
		FUNC0("invalid --pretty format: "
		    "'%s' references an alias which points to itself",
		    original);

	for (i = 0; i < commit_formats_len; i++) {
		size_t match_len;

		if (!FUNC1(commit_formats[i].name, sought))
			continue;

		match_len = FUNC2(commit_formats[i].name);
		if (found == NULL || found_match_len > match_len) {
			found = &commit_formats[i];
			found_match_len = match_len;
		}
	}

	if (found && found->is_alias) {
		found = FUNC3(found->user_format,
						     original,
						     num_redirections+1);
	}

	return found;
}