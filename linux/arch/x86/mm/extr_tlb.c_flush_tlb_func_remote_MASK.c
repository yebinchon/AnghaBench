#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct flush_tlb_info {scalar_t__ mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  loaded_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_TLB_REMOTE_FLUSH_RECEIVED ; 
 int /*<<< orphan*/  TLB_REMOTE_SHOOTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ cpu_tlbstate ; 
 int /*<<< orphan*/  FUNC1 (struct flush_tlb_info const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irq_tlb_count ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *info)
{
	const struct flush_tlb_info *f = info;

	FUNC2(irq_tlb_count);

	if (f->mm && f->mm != FUNC3(cpu_tlbstate.loaded_mm))
		return;

	FUNC0(NR_TLB_REMOTE_FLUSH_RECEIVED);
	FUNC1(f, false, TLB_REMOTE_SHOOTDOWN);
}