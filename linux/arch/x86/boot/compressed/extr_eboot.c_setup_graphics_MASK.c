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
struct screen_info {int dummy; } ;
struct boot_params {struct screen_info screen_info; } ;
typedef  scalar_t__ efi_status_t ;
typedef  int /*<<< orphan*/  efi_guid_t ;

/* Variables and functions */
 scalar_t__ EFI_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID ; 
 int /*<<< orphan*/  EFI_LOCATE_BY_PROTOCOL ; 
 scalar_t__ EFI_SUCCESS ; 
 int /*<<< orphan*/  EFI_UGA_PROTOCOL_GUID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long*,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct screen_info*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  locate_handle ; 
 int /*<<< orphan*/  FUNC2 (struct screen_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_info*,int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct boot_params *boot_params)
{
	efi_guid_t graphics_proto = EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID;
	struct screen_info *si;
	efi_guid_t uga_proto = EFI_UGA_PROTOCOL_GUID;
	efi_status_t status;
	unsigned long size;
	void **gop_handle = NULL;
	void **uga_handle = NULL;

	si = &boot_params->screen_info;
	FUNC2(si, 0, sizeof(*si));

	size = 0;
	status = FUNC0(locate_handle,
				EFI_LOCATE_BY_PROTOCOL,
				&graphics_proto, NULL, &size, gop_handle);
	if (status == EFI_BUFFER_TOO_SMALL)
		status = FUNC1(NULL, si, &graphics_proto, size);

	if (status != EFI_SUCCESS) {
		size = 0;
		status = FUNC0(locate_handle,
					EFI_LOCATE_BY_PROTOCOL,
					&uga_proto, NULL, &size, uga_handle);
		if (status == EFI_BUFFER_TOO_SMALL)
			FUNC3(si, &uga_proto, size);
	}
}