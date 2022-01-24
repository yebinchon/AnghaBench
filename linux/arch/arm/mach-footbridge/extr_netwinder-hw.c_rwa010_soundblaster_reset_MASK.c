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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
	int i;

	FUNC3(1, 0x226);
	FUNC5(3);
	FUNC3(0, 0x226);

	for (i = 0; i < 5; i++) {
		if (FUNC1(0x22e) & 0x80)
			break;
		FUNC2(1);
	}
	if (i == 5)
		FUNC4("SoundBlaster: DSP reset failed\n");

	FUNC0("SoundBlaster DSP reset: %02X (AA)\n", FUNC1(0x22a));

	for (i = 0; i < 5; i++) {
		if ((FUNC1(0x22c) & 0x80) == 0)
			break;
		FUNC2(1);
	}

	if (i == 5)
		FUNC4("SoundBlaster: DSP not ready\n");
	else {
		FUNC3(0xe1, 0x22c);

		FUNC0("SoundBlaster DSP id: ");
		i = FUNC1(0x22a);
		FUNC5(1);
		i |= FUNC1(0x22a) << 8;
		FUNC0("%04X\n", i);

		for (i = 0; i < 5; i++) {
			if ((FUNC1(0x22c) & 0x80) == 0)
				break;
			FUNC2(1);
		}

		if (i == 5)
			FUNC4("SoundBlaster: could not turn speaker off\n");

		FUNC3(0xd3, 0x22c);
	}

	/* turn on OPL3 */
	FUNC3(5, 0x38a);
	FUNC3(1, 0x38b);
}