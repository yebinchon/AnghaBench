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
struct repository {int dummy; } ;
struct diff_filespec {unsigned long size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_SIZE_ONLY ; 
 int /*<<< orphan*/  FUNC0 (struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*,struct diff_filespec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct repository *r,
					struct diff_filespec *one)
{
	if (!FUNC0(one))
		return 0;
	FUNC1(r, one, CHECK_SIZE_ONLY);
	return one->size;
}