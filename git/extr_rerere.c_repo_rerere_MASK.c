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
struct string_list {int dummy; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_DUP ; 
 int FUNC0 (struct repository*,struct string_list*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct repository*,struct string_list*,int) ; 

int FUNC3(struct repository *r, int flags)
{
	struct string_list merge_rr = STRING_LIST_INIT_DUP;
	int fd, status;

	fd = FUNC2(r, &merge_rr, flags);
	if (fd < 0)
		return 0;
	status = FUNC0(r, &merge_rr, fd);
	FUNC1();
	return status;
}