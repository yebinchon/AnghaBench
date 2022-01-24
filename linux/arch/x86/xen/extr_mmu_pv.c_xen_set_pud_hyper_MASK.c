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
struct mmu_update {int /*<<< orphan*/  val; int /*<<< orphan*/  ptr; } ;
typedef  int /*<<< orphan*/  pud_t ;
struct TYPE_2__ {int /*<<< orphan*/  maddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARAVIRT_LAZY_MMU ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmu_update*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(pud_t *ptr, pud_t val)
{
	struct mmu_update u;

	FUNC1();

	FUNC5();

	/* ptr may be ioremapped for 64-bit pagetable setup */
	u.ptr = FUNC0(ptr).maddr;
	u.val = FUNC3(val);
	FUNC4(&u);

	FUNC6(PARAVIRT_LAZY_MMU);

	FUNC2();
}