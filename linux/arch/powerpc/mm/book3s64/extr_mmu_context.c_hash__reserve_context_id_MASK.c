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
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmu_context_ida ; 

void FUNC2(int id)
{
	int result = FUNC1(&mmu_context_ida, id, id, GFP_KERNEL);

	FUNC0(result != id, "mmu: Failed to reserve context id %d (rc %d)\n", id, result);
}