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
 int /*<<< orphan*/  TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int UART_LSR_THRE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const unsigned char *buf, int count)
{
	int i = 0;

	while (count--) {
		while (!(FUNC2(FUNC0(LSR)) & UART_LSR_THRE))
			FUNC1();
		FUNC3(buf[i++], FUNC0(TX));
	}

	return 0;
}