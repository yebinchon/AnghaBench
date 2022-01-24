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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prepare_lock ; 
 int /*<<< orphan*/ * prepare_owner ; 
 int prepare_refcnt ; 

__attribute__((used)) static void FUNC3(void)
{
	if (!FUNC2(&prepare_lock)) {
		if (prepare_owner == current) {
			prepare_refcnt++;
			return;
		}
		FUNC1(&prepare_lock);
	}
	FUNC0(prepare_owner != NULL);
	FUNC0(prepare_refcnt != 0);
	prepare_owner = current;
	prepare_refcnt = 1;
}