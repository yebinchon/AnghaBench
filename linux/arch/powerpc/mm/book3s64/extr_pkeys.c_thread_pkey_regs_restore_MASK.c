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
struct thread_struct {scalar_t__ amr; scalar_t__ iamr; scalar_t__ uamor; } ;

/* Variables and functions */
 int /*<<< orphan*/  pkey_disabled ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct thread_struct *new_thread,
			      struct thread_struct *old_thread)
{
	if (FUNC0(&pkey_disabled))
		return;

	if (old_thread->amr != new_thread->amr)
		FUNC1(new_thread->amr);
	if (old_thread->iamr != new_thread->iamr)
		FUNC2(new_thread->iamr);
	if (old_thread->uamor != new_thread->uamor)
		FUNC3(new_thread->uamor);
}