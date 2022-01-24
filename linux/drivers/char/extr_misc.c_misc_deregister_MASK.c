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
struct miscdevice {int minor; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int DYNAMIC_MINORS ; 
 int /*<<< orphan*/  MISC_MAJOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  misc_class ; 
 int /*<<< orphan*/  misc_minors ; 
 int /*<<< orphan*/  misc_mtx ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct miscdevice *misc)
{
	int i = DYNAMIC_MINORS - misc->minor - 1;

	if (FUNC1(FUNC5(&misc->list)))
		return;

	FUNC6(&misc_mtx);
	FUNC4(&misc->list);
	FUNC3(misc_class, FUNC0(MISC_MAJOR, misc->minor));
	if (i < DYNAMIC_MINORS && i >= 0)
		FUNC2(i, misc_minors);
	FUNC7(&misc_mtx);
}