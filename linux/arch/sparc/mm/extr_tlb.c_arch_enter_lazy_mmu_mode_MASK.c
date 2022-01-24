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
struct tlb_batch {int active; } ;

/* Variables and functions */
 struct tlb_batch* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tlb_batch ; 

void FUNC1(void)
{
	struct tlb_batch *tb = FUNC0(&tlb_batch);

	tb->active = 1;
}