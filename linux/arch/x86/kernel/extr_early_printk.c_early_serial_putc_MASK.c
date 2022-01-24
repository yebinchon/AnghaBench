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
 int /*<<< orphan*/  LSR ; 
 int /*<<< orphan*/  TXR ; 
 int XMTRDY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  early_serial_base ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC3(unsigned char ch)
{
	unsigned timeout = 0xffff;

	while ((FUNC1(early_serial_base, LSR) & XMTRDY) == 0 && --timeout)
		FUNC0();
	FUNC2(early_serial_base, TXR, ch);
	return timeout ? 0 : -1;
}