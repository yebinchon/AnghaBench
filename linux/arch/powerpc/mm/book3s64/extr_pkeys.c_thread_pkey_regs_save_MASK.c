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
struct thread_struct {int /*<<< orphan*/  uamor; int /*<<< orphan*/  iamr; int /*<<< orphan*/  amr; } ;

/* Variables and functions */
 int /*<<< orphan*/  pkey_disabled ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct thread_struct *thread)
{
	if (FUNC3(&pkey_disabled))
		return;

	/*
	 * TODO: Skip saving registers if @thread hasn't used any keys yet.
	 */
	thread->amr = FUNC0();
	thread->iamr = FUNC1();
	thread->uamor = FUNC2();
}