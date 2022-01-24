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
 int /*<<< orphan*/  RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char UART_LSR_DR ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(unsigned char *buf, int count)
{
	int i;
	int timeout;

	for (i = 0; i < count; i++) {
		timeout = 10;

		while (!(FUNC1(FUNC0(LSR)) & UART_LSR_DR)) {
			if (--timeout == 0)
				break;
			FUNC2(1000);
		}

		if (timeout == 0)
			break;
		buf[i] = FUNC1(FUNC0(RX));
	}

	/* return read bytes */
	return i;
}