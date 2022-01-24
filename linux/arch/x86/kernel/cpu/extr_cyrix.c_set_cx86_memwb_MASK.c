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
 int /*<<< orphan*/  CX86_CCR2 ; 
 int X86_CR0_NW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void)
{
	FUNC1("Enable Memory-Write-back mode on Cyrix/NSC processor.\n");

	/* CCR2 bit 2: unlock NW bit */
	FUNC3(CX86_CCR2, FUNC0(CX86_CCR2) & ~0x04);
	/* set 'Not Write-through' */
	FUNC4(FUNC2() | X86_CR0_NW);
	/* CCR2 bit 2: lock NW bit and set WT1 */
	FUNC3(CX86_CCR2, FUNC0(CX86_CCR2) | 0x14);
}