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
 int /*<<< orphan*/  UART01x_DR ; 
 int /*<<< orphan*/  UART01x_FR ; 
 int UART01x_FR_TXFF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 

void FUNC2(char c)
{
	FUNC1(c, UART01x_DR);
	while ((FUNC0(UART01x_FR) & UART01x_FR_TXFF) != 0)
		;
}