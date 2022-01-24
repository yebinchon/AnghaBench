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
#define  CPU_TX3922 129 
#define  CPU_TX3927 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int r3k_have_wired_reg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	switch (FUNC1()) {
	case CPU_TX3922:
	case CPU_TX3927:
		r3k_have_wired_reg = 1;
		FUNC3(0);		/* Set to 8 on reset... */
		break;
	}
	FUNC2(0);
	FUNC0();
}