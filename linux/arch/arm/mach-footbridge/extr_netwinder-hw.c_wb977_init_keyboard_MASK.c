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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static inline void FUNC4(void)
{
	FUNC1(5);

	/*
	 * Keyboard controller address
	 */
	FUNC3(0x60, 0x0060);
	FUNC3(0x62, 0x0064);

	/*
	 * Keyboard IRQ 1, active high, edge trigger
	 */
	FUNC2(0x70, 1);
	FUNC2(0x71, 0x02);

	/*
	 * Mouse IRQ 5, active high, edge trigger
	 */
	FUNC2(0x72, 5);
	FUNC2(0x73, 0x02);

	/*
	 * KBC 8MHz
	 */
	FUNC2(0xf0, 0x40);

	/*
	 * Enable device
	 */
	FUNC0();
}