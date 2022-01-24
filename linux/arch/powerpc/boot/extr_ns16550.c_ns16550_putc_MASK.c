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
 int UART_LSR ; 
 int UART_LSR_THRE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned char) ; 
 scalar_t__ reg_base ; 
 int reg_shift ; 

__attribute__((used)) static void FUNC2(unsigned char c)
{
	while ((FUNC0(reg_base + (UART_LSR << reg_shift)) & UART_LSR_THRE) == 0);
	FUNC1(reg_base, c);
}