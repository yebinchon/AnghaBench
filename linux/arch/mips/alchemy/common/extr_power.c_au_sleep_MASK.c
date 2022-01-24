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
#define  ALCHEMY_CPU_AU1000 133 
#define  ALCHEMY_CPU_AU1100 132 
#define  ALCHEMY_CPU_AU1200 131 
#define  ALCHEMY_CPU_AU1300 130 
#define  ALCHEMY_CPU_AU1500 129 
#define  ALCHEMY_CPU_AU1550 128 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
	FUNC5();

	switch (FUNC0()) {
	case ALCHEMY_CPU_AU1000:
	case ALCHEMY_CPU_AU1500:
	case ALCHEMY_CPU_AU1100:
		FUNC1();
		break;
	case ALCHEMY_CPU_AU1550:
	case ALCHEMY_CPU_AU1200:
		FUNC3();
		break;
	case ALCHEMY_CPU_AU1300:
		FUNC2();
		break;
	}

	FUNC4();
}