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
typedef  scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ vid_mode; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;

/* Variables and functions */
 scalar_t__ ASK_VGA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__ boot_params ; 
 scalar_t__ do_restore ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void)
{
	u16 mode = boot_params.hdr.vid_mode;

	FUNC0();

	FUNC7();
	FUNC5();
	FUNC3(0);

	for (;;) {
		if (mode == ASK_VGA)
			mode = FUNC1();

		if (!FUNC6(mode))
			break;

		FUNC2("Undefined video mode number: %x\n", mode);
		mode = ASK_VGA;
	}
	boot_params.hdr.vid_mode = mode;
	FUNC8();
	FUNC7();

	if (do_restore)
		FUNC4();
}