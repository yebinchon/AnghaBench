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
struct rev_info {int /*<<< orphan*/  line_log_data; } ;
struct line_log_data {int dummy; } ;
struct commit {int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct line_log_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct line_log_data*) ; 
 struct line_log_data* FUNC2 (struct line_log_data*) ; 
 struct line_log_data* FUNC3 (struct line_log_data*,struct line_log_data*) ; 
 struct line_log_data* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rev_info *revs, struct commit *commit,
			   struct line_log_data *range)
{
	struct line_log_data *old_line = NULL;
	struct line_log_data *new_line = NULL;

	old_line = FUNC4(&revs->line_log_data, &commit->object);
	if (old_line && range) {
		new_line = FUNC3(old_line, range);
		FUNC1(old_line);
	} else if (range)
		new_line = FUNC2(range);

	if (new_line)
		FUNC0(&revs->line_log_data, &commit->object, new_line);
}