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
struct line_log_data {int /*<<< orphan*/  path; int /*<<< orphan*/  ranges; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct line_log_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct line_log_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct line_log_data* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct line_log_data *FUNC5(struct line_log_data *r)
{
	struct line_log_data *ret = FUNC3(sizeof(*ret));

	FUNC0(r);
	FUNC1(ret);
	FUNC2(&ret->ranges, &r->ranges);

	ret->path = FUNC4(r->path);

	return ret;
}