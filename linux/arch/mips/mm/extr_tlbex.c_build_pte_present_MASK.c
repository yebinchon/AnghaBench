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
typedef  enum label_id { ____Placeholder_label_id } label_id ;

/* Variables and functions */
 int _PAGE_NO_READ ; 
 int _PAGE_PRESENT ; 
 int _PAGE_PRESENT_SHIFT ; 
 scalar_t__ cpu_has_rixi ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,struct uasm_reloc**,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,struct uasm_reloc**,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,struct uasm_reloc**,int,int) ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static void
FUNC10(u32 **p, struct uasm_reloc **r,
		  int pte, int ptr, int scratch, enum label_id lid)
{
	int t = scratch >= 0 ? scratch : pte;
	int cur = pte;

	if (cpu_has_rixi) {
		if (FUNC9()) {
			FUNC6(p, r, pte, FUNC1(_PAGE_PRESENT), lid);
			FUNC3(p);
		} else {
			if (_PAGE_PRESENT_SHIFT) {
				FUNC4(p, t, cur, _PAGE_PRESENT_SHIFT);
				cur = t;
			}
			FUNC2(p, t, cur, 1);
			FUNC7(p, r, t, lid);
			if (pte == t)
				/* You lose the SMP race :-(*/
				FUNC0(p, pte, ptr);
		}
	} else {
		if (_PAGE_PRESENT_SHIFT) {
			FUNC4(p, t, cur, _PAGE_PRESENT_SHIFT);
			cur = t;
		}
		FUNC2(p, t, cur,
			(_PAGE_PRESENT | _PAGE_NO_READ) >> _PAGE_PRESENT_SHIFT);
		FUNC5(p, t, t, _PAGE_PRESENT >> _PAGE_PRESENT_SHIFT);
		FUNC8(p, r, t, lid);
		if (pte == t)
			/* You lose the SMP race :-(*/
			FUNC0(p, pte, ptr);
	}
}