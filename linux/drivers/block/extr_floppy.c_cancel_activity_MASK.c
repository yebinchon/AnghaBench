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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * do_floppy ; 
 int /*<<< orphan*/  fd_timer ; 
 int /*<<< orphan*/  floppy_work ; 

__attribute__((used)) static void FUNC2(void)
{
	do_floppy = NULL;
	FUNC0(&fd_timer);
	FUNC1(&floppy_work);
}