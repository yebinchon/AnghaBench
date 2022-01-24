#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* tag_name; char const* target; int num_lines; int force; char const* pattern; char const* message; } ;
typedef  TYPE_1__ tag_options ;
typedef  int /*<<< orphan*/ * tag_action ;
struct TYPE_8__ {int pos; } ;
typedef  TYPE_2__ args_info ;

/* Variables and functions */
 TYPE_2__ ARGS_INFO_INIT ; 
 int /*<<< orphan*/  action_create_lighweight_tag ; 
 int /*<<< orphan*/  action_create_tag ; 
 int /*<<< orphan*/  action_delete_tag ; 
 int /*<<< orphan*/  action_list_tags ; 
 scalar_t__ FUNC0 (int*,TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const**,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static void FUNC4(tag_action *action, tag_options *opts, int argc, char **argv)
{
	args_info args = ARGS_INFO_INIT;
	*action = &action_list_tags;

	for (args.pos = 1; args.pos < argc; ++args.pos) {
		const char *curr = argv[args.pos];

		if (curr[0] != '-') {
			if (!opts->tag_name)
				opts->tag_name = curr;
			else if (!opts->target)
				opts->target = curr;
			else
				FUNC2();

			if (*action != &action_create_tag)
				*action = &action_create_lighweight_tag;
		} else if (!FUNC3(curr, "-n")) {
			opts->num_lines = 1;
			*action = &action_list_tags;
		} else if (!FUNC3(curr, "-a")) {
			*action = &action_create_tag;
		} else if (!FUNC3(curr, "-f")) {
			opts->force = 1;
		} else if (FUNC0(&opts->num_lines, &args, "-n", 0)) {
			*action = &action_list_tags;
		} else if (FUNC1(&opts->pattern, &args, "-l")) {
			*action = &action_list_tags;
		} else if (FUNC1(&opts->tag_name, &args, "-d")) {
			*action = &action_delete_tag;
		} else if (FUNC1(&opts->message, &args, "-m")) {
			*action = &action_create_tag;
		}
	}
}