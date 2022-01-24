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
struct tlb_batch {scalar_t__ active; scalar_t__ tlb_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct tlb_batch* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tlb_batch ; 

void FUNC2(void)
{
	struct tlb_batch *tb = FUNC1(&tlb_batch);

	if (tb->tlb_nr)
		FUNC0();
	tb->active = 0;
}