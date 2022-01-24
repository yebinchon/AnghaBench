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
 int EVENT_ERR_ABORT_ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(int errcode)
{
	if (&fatal_fn) {
		FUNC2(errcode);
		FUNC1(errcode); /* should never be reached */
	} else if (errcode == EVENT_ERR_ABORT_)
		FUNC0();
	else
		FUNC1(errcode);
}