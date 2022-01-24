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
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long*) ; 

__attribute__((used)) static void FUNC2(int spr, bool show_unimplemented)
{
	unsigned long val;

	val = 0xdeadbeef;
	if (!FUNC1(spr, &val)) {
		FUNC0("SPR 0x%03x (%4d) Faulted during read\n", spr, spr);
		return;
	}

	if (val == 0xdeadbeef) {
		/* Looks like read was a nop, confirm */
		val = 0x0badcafe;
		if (!FUNC1(spr, &val)) {
			FUNC0("SPR 0x%03x (%4d) Faulted during read\n", spr, spr);
			return;
		}

		if (val == 0x0badcafe) {
			if (show_unimplemented)
				FUNC0("SPR 0x%03x (%4d) Unimplemented\n", spr, spr);
			return;
		}
	}

	FUNC0("SPR 0x%03x (%4d) = 0x%lx\n", spr, spr, val);
}