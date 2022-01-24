#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  code32_start; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;

/* Variables and functions */
 TYPE_2__ boot_params ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(void)
{
	/* Hook before leaving real mode, also disables interrupts */
	FUNC6();

	/* Enable the A20 gate */
	if (FUNC2()) {
		FUNC5("A20 gate not responding, unable to boot...\n");
		FUNC0();
	}

	/* Reset coprocessor (IGNNE#) */
	FUNC7();

	/* Mask all interrupts in the PIC */
	FUNC3();

	/* Actual transition to protected mode... */
	FUNC9();
	FUNC8();
	FUNC4(boot_params.hdr.code32_start,
			    (u32)&boot_params + (FUNC1() << 4));
}