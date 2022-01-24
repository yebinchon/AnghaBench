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
 int UART_FLAG_TXFE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_REG_DATA ; 
 int /*<<< orphan*/  UART_REG_FLAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(int ch)
{
	while ((FUNC0(UART_REG_FLAG) & UART_FLAG_TXFE) == 0);

	FUNC1(UART_REG_DATA, ch);

	while ((FUNC0(UART_REG_FLAG) & UART_FLAG_TXFE) == 0);
}