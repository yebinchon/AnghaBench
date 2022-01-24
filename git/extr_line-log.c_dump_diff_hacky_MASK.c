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
struct TYPE_2__ {int /*<<< orphan*/  file; } ;
struct rev_info {TYPE_1__ diffopt; } ;
struct line_log_data {struct line_log_data* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rev_info*,struct line_log_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct rev_info *rev, struct line_log_data *range)
{
	FUNC1(rev->diffopt.file, "%s\n", FUNC2(&rev->diffopt));
	while (range) {
		FUNC0(rev, range);
		range = range->next;
	}
}