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
struct biosregs {int ax; int bl; int cx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct biosregs*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct biosregs*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void)
{
	/* Set 8x8 font - 80x43 on EGA, 80x50 on VGA */
	struct biosregs ireg;

	FUNC0(&ireg);

	/* Set 8x8 font */
	ireg.ax = 0x1112;
	/* ireg.bl = 0; */
	FUNC1(0x10, &ireg, NULL);

	/* Use alternate print screen */
	ireg.ax = 0x1200;
	ireg.bl = 0x20;
	FUNC1(0x10, &ireg, NULL);

	/* Turn off cursor emulation */
	ireg.ax = 0x1201;
	ireg.bl = 0x34;
	FUNC1(0x10, &ireg, NULL);

	/* Cursor is scan lines 6-7 */
	ireg.ax = 0x0100;
	ireg.cx = 0x0607;
	FUNC1(0x10, &ireg, NULL);
}