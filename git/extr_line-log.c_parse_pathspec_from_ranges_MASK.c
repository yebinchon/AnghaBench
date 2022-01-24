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
struct pathspec {int dummy; } ;
struct line_log_data {int /*<<< orphan*/  path; struct line_log_data* next; } ;
struct argv_array {int dummy; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  PATHSPEC_PREFER_FULL ; 
 char** FUNC0 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const**) ; 
 int /*<<< orphan*/  FUNC3 (struct pathspec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 

__attribute__((used)) static void FUNC4(struct pathspec *pathspec,
				       struct line_log_data *range)
{
	struct line_log_data *r;
	struct argv_array array = ARGV_ARRAY_INIT;
	const char **paths;

	for (r = range; r; r = r->next)
		FUNC1(&array, r->path);
	paths = FUNC0(&array);

	FUNC3(pathspec, 0, PATHSPEC_PREFER_FULL, "", paths);
	/* strings are now owned by pathspec */
	FUNC2(paths);
}