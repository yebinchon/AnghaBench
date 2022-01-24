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
struct biosregs {int ax; int bl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct biosregs*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct biosregs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	/* Set 80x43 mode on VGA (not EGA) */
	struct biosregs ireg;

	FUNC0(&ireg);

	/* Set 350 scans */
	ireg.ax = 0x1201;
	ireg.bl = 0x30;
	FUNC1(0x10, &ireg, NULL);

	/* Reset video mode */
	ireg.ax = 0x0003;
	FUNC1(0x10, &ireg, NULL);

	FUNC2();
}