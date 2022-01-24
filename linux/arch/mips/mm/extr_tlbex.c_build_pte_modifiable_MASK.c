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
 int /*<<< orphan*/  _PAGE_WRITE ; 
 int /*<<< orphan*/  _PAGE_WRITE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,struct uasm_reloc**,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,struct uasm_reloc**,int,int) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static void
FUNC8(u32 **p, struct uasm_reloc **r,
		     unsigned int pte, unsigned int ptr, int scratch,
		     enum label_id lid)
{
	if (FUNC7()) {
		FUNC5(p, r, pte, FUNC1(_PAGE_WRITE), lid);
		FUNC3(p);
	} else {
		int t = scratch >= 0 ? scratch : pte;
		FUNC4(p, t, pte, _PAGE_WRITE_SHIFT);
		FUNC2(p, t, t, 1);
		FUNC6(p, r, t, lid);
		if (pte == t)
			/* You lose the SMP race :-(*/
			FUNC0(p, pte, ptr);
	}
}