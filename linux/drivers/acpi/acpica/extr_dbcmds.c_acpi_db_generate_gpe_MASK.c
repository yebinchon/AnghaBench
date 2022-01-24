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
typedef  int u32 ;
struct acpi_gpe_event_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct acpi_gpe_event_info* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct acpi_gpe_event_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(char *gpe_arg, char *block_arg)
{
	u32 block_number = 0;
	u32 gpe_number;
	struct acpi_gpe_event_info *gpe_event_info;

	gpe_number = FUNC4(gpe_arg, NULL, 0);

	/*
	 * If no block arg, or block arg == 0 or 1, use the FADT-defined
	 * GPE blocks.
	 */
	if (block_arg) {
		block_number = FUNC4(block_arg, NULL, 0);
		if (block_number == 1) {
			block_number = 0;
		}
	}

	gpe_event_info =
	    FUNC1(FUNC0(block_number),
				       gpe_number);
	if (!gpe_event_info) {
		FUNC3("Invalid GPE\n");
		return;
	}

	(void)FUNC2(NULL, gpe_event_info, gpe_number);
}