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
struct lock_file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct lock_file*,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct lock_file*) ; 

int FUNC3(struct lock_file *lk)
{
	char *result_path = FUNC2(lk);

	if (FUNC0(lk, result_path)) {
		int save_errno = errno;
		FUNC1(result_path);
		errno = save_errno;
		return -1;
	}
	FUNC1(result_path);
	return 0;
}