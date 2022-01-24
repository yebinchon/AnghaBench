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

/* Variables and functions */
 int /*<<< orphan*/  C0_ENTRYLO0 ; 
 int /*<<< orphan*/  C0_EPC ; 
 int /*<<< orphan*/  C0_INDEX ; 
 int /*<<< orphan*/  label_r3000_write_probe_fail ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,struct uasm_reloc**,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uasm_label**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(u32 **p, struct uasm_label **l,
			     struct uasm_reloc **r, unsigned int pte,
			     unsigned int tmp)
{
	FUNC1(p, tmp, C0_INDEX);
	FUNC2(p, pte, C0_ENTRYLO0); /* cp0 delay */
	FUNC6(p, r, tmp, label_r3000_write_probe_fail); /* cp0 delay */
	FUNC1(p, tmp, C0_EPC); /* branch delay */
	FUNC4(p); /* cp0 delay */
	FUNC0(p, tmp);
	FUNC3(p); /* branch delay */
	FUNC7(l, *p);
	FUNC5(p); /* cp0 delay */
	FUNC0(p, tmp);
	FUNC3(p); /* branch delay */
}