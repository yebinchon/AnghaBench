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
 scalar_t__ LSR ; 
 scalar_t__ TXR ; 
 int XMTRDY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ early_serial_base ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(int ch)
{
	unsigned timeout = 0xffff;

	while ((FUNC1(early_serial_base + LSR) & XMTRDY) == 0 && --timeout)
		FUNC0();

	FUNC2(ch, early_serial_base + TXR);
}