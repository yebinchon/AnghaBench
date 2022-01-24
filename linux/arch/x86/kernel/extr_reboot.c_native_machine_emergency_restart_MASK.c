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
typedef  int u8 ;

/* Variables and functions */
#define  BOOT_ACPI 134 
#define  BOOT_BIOS 133 
#define  BOOT_CF9_FORCE 132 
#define  BOOT_CF9_SAFE 131 
#define  BOOT_EFI 130 
#define  BOOT_KBD 129 
#define  BOOT_TRIPLE 128 
 int /*<<< orphan*/  MRR_BIOS ; 
 scalar_t__ REBOOT_WARM ; 
 int /*<<< orphan*/  TB_SHUTDOWN_REBOOT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int port_cf9_safe ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ reboot_emergency ; 
 scalar_t__ reboot_mode ; 
 int reboot_type ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(void)
{
	int i;
	int attempt = 0;
	int orig_reboot_type = reboot_type;
	unsigned short mode;

	if (reboot_emergency)
		FUNC4();

	FUNC12(TB_SHUTDOWN_REBOOT);

	/* Tell the BIOS if we want cold or warm reboot */
	mode = reboot_mode == REBOOT_WARM ? 0x1234 : 0;
	*((unsigned short *)FUNC0(0x472)) = mode;

	/*
	 * If an EFI capsule has been registered with the firmware then
	 * override the reboot= parameter.
	 */
	if (FUNC2(NULL)) {
		FUNC11("EFI capsule is pending, forcing EFI reboot.\n");
		reboot_type = BOOT_EFI;
	}

	for (;;) {
		/* Could also try the reset bit in the Hammer NB */
		switch (reboot_type) {
		case BOOT_ACPI:
			FUNC1();
			reboot_type = BOOT_KBD;
			break;

		case BOOT_KBD:
			FUNC8(); /* For board specific fixups */

			for (i = 0; i < 10; i++) {
				FUNC7();
				FUNC13(50);
				FUNC10(0xfe, 0x64); /* Pulse reset low */
				FUNC13(50);
			}
			if (attempt == 0 && orig_reboot_type == BOOT_ACPI) {
				attempt = 1;
				reboot_type = BOOT_ACPI;
			} else {
				reboot_type = BOOT_EFI;
			}
			break;

		case BOOT_EFI:
			FUNC3(reboot_mode, NULL);
			reboot_type = BOOT_BIOS;
			break;

		case BOOT_BIOS:
			FUNC9(MRR_BIOS);

			/* We're probably dead after this, but... */
			reboot_type = BOOT_CF9_SAFE;
			break;

		case BOOT_CF9_FORCE:
			port_cf9_safe = true;
			/* Fall through */

		case BOOT_CF9_SAFE:
			if (port_cf9_safe) {
				u8 reboot_code = reboot_mode == REBOOT_WARM ?  0x06 : 0x0E;
				u8 cf9 = FUNC6(0xcf9) & ~reboot_code;
				FUNC10(cf9|2, 0xcf9); /* Request hard reset */
				FUNC13(50);
				/* Actually do the reset */
				FUNC10(cf9|reboot_code, 0xcf9);
				FUNC13(50);
			}
			reboot_type = BOOT_TRIPLE;
			break;

		case BOOT_TRIPLE:
			FUNC5(NULL);
			__asm__ __volatile__("int3");

			/* We're probably dead after this, but... */
			reboot_type = BOOT_KBD;
			break;
		}
	}
}