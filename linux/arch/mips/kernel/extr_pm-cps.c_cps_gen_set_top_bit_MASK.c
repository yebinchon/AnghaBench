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
 int /*<<< orphan*/  t0 ; 
 int /*<<< orphan*/  t1 ; 
 int /*<<< orphan*/  FUNC0 (struct uasm_label**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,struct uasm_reloc**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(u32 **pp, struct uasm_label **pl,
				struct uasm_reloc **pr,
				unsigned r_addr, int lbl)
{
	FUNC2(pp, t0, FUNC7(0x80000000));
	FUNC0(pl, *pp, lbl);
	FUNC1(pp, t1, 0, r_addr);
	FUNC4(pp, t1, t1, t0);
	FUNC5(pp, t1, 0, r_addr);
	FUNC6(pp, pr, t1, lbl);
	FUNC3(pp);
}