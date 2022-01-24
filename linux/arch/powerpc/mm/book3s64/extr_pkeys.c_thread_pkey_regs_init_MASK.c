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
 int /*<<< orphan*/  pkey_amr_mask ; 
 int /*<<< orphan*/  pkey_disabled ; 
 int /*<<< orphan*/  pkey_iamr_mask ; 
 int /*<<< orphan*/  pkey_uamor_mask ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct thread_struct *thread)
{
	if (FUNC0(&pkey_disabled))
		return;

	thread->amr = pkey_amr_mask;
	thread->iamr = pkey_iamr_mask;
	thread->uamor = pkey_uamor_mask;

	FUNC3(pkey_uamor_mask);
	FUNC1(pkey_amr_mask);
	FUNC2(pkey_iamr_mask);
}