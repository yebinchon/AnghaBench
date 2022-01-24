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
 int _PAGE_PRESENT ; 
 int _PAGE_PRESENT_SHIFT ; 
 int _PAGE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,struct uasm_reloc**,int,int) ; 

__attribute__((used)) static void
FUNC6(u32 **p, struct uasm_reloc **r,
		   unsigned int pte, unsigned int ptr, int scratch,
		   enum label_id lid)
{
	int t = scratch >= 0 ? scratch : pte;
	int cur = pte;

	if (_PAGE_PRESENT_SHIFT) {
		FUNC3(p, t, cur, _PAGE_PRESENT_SHIFT);
		cur = t;
	}
	FUNC1(p, t, cur,
		    (_PAGE_PRESENT | _PAGE_WRITE) >> _PAGE_PRESENT_SHIFT);
	FUNC4(p, t, t,
		    (_PAGE_PRESENT | _PAGE_WRITE) >> _PAGE_PRESENT_SHIFT);
	FUNC5(p, r, t, lid);
	if (pte == t)
		/* You lose the SMP race :-(*/
		FUNC0(p, pte, ptr);
	else
		FUNC2(p);
}