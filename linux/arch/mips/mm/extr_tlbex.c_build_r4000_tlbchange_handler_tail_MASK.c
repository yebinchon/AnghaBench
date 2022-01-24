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
typedef  int /*<<< orphan*/  u32 ;
struct uasm_reloc {int dummy; } ;
struct uasm_label {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,struct uasm_label**,struct uasm_reloc**,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,struct uasm_label**,struct uasm_reloc**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  not_refill ; 
 int /*<<< orphan*/  tlb_indexed ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct uasm_label**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(u32 **p, struct uasm_label **l,
				   struct uasm_reloc **r, unsigned int tmp,
				   unsigned int ptr)
{
	FUNC5(p, ptr, ptr, sizeof(pte_t));
	FUNC6(p, ptr, ptr, sizeof(pte_t));
	FUNC3(p, tmp, ptr);
	FUNC2(p, l, r, tlb_indexed);
	FUNC7(l, *p);
	FUNC1(p);
	FUNC4(p); /* return from trap */

#ifdef CONFIG_64BIT
	build_get_pgd_vmalloc64(p, l, r, tmp, ptr, not_refill);
#endif
}