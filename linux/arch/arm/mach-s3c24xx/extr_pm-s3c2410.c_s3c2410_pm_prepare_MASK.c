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
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  H1940_SUSPEND_CHECK ; 
 int /*<<< orphan*/  H1940_SUSPEND_CHECKSUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  S3C2410_GPIO_INPUT ; 
 void* S3C2410_GSTATUS3 ; 
 void* S3C2410_GSTATUS4 ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s3c_cpu_resume ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(void)
{
	/* ensure at least GSTATUS3 has the resume address */

	FUNC5(FUNC3(s3c_cpu_resume), S3C2410_GSTATUS3);

	FUNC2("GSTATUS3 0x%08x\n", FUNC4(S3C2410_GSTATUS3));
	FUNC2("GSTATUS4 0x%08x\n", FUNC4(S3C2410_GSTATUS4));

	if (FUNC9()) {
		void *base = FUNC12(H1940_SUSPEND_CHECK);
		unsigned long ptr;
		unsigned long calc = 0;

		/* generate check for the bootloader to check on resume */

		for (ptr = 0; ptr < 0x40000; ptr += 0x400)
			calc += FUNC4(base+ptr);

		FUNC5(calc, FUNC12(H1940_SUSPEND_CHECKSUM));
	}

	/* RX3715 and RX1950 use similar to H1940 code and the
	 * same offsets for resume and checksum pointers */

	if (FUNC11() || FUNC10()) {
		void *base = FUNC12(H1940_SUSPEND_CHECK);
		unsigned long ptr;
		unsigned long calc = 0;

		/* generate check for the bootloader to check on resume */

		for (ptr = 0; ptr < 0x40000; ptr += 0x4)
			calc += FUNC4(base+ptr);

		FUNC5(calc, FUNC12(H1940_SUSPEND_CHECKSUM));
	}

	if (FUNC8()) {
		FUNC7(FUNC0(2), GPIOF_OUT_INIT_HIGH, NULL);
		FUNC6(FUNC0(2));
	}

	if (FUNC10()) {
		/* According to S3C2442 user's manual, page 7-17,
		 * when the system is operating in NAND boot mode,
		 * the hardware pin configuration - EINT[23:21] –
		 * must be set as input for starting up after
		 * wakeup from sleep mode
		 */
		FUNC13(FUNC1(13), S3C2410_GPIO_INPUT);
		FUNC13(FUNC1(14), S3C2410_GPIO_INPUT);
		FUNC13(FUNC1(15), S3C2410_GPIO_INPUT);
	}
}