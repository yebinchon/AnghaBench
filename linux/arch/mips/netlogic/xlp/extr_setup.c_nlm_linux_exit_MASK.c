#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  sysbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_9XX_CHIP_RESET ; 
 int /*<<< orphan*/  SYS_CHIP_RESET ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(void)
{
	uint64_t sysbase = FUNC2(0)->sysbase;

	if (FUNC0())
		FUNC3(sysbase, SYS_9XX_CHIP_RESET, 1);
	else
		FUNC3(sysbase, SYS_CHIP_RESET, 1);
	for ( ; ; )
		FUNC1();
}