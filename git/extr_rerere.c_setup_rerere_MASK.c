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
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 int RERERE_AUTOUPDATE ; 
 int RERERE_NOAUTOUPDATE ; 
 int RERERE_READONLY ; 
 int /*<<< orphan*/  FUNC0 (struct repository*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct repository*,struct string_list*) ; 
 int rerere_autoupdate ; 
 int /*<<< orphan*/  write_lock ; 

int FUNC5(struct repository *r, struct string_list *merge_rr, int flags)
{
	int fd;

	FUNC1();
	if (!FUNC3())
		return -1;

	if (flags & (RERERE_AUTOUPDATE|RERERE_NOAUTOUPDATE))
		rerere_autoupdate = !!(flags & RERERE_AUTOUPDATE);
	if (flags & RERERE_READONLY)
		fd = 0;
	else
		fd = FUNC2(&write_lock,
					       FUNC0(r),
					       LOCK_DIE_ON_ERROR);
	FUNC4(r, merge_rr);
	return fd;
}