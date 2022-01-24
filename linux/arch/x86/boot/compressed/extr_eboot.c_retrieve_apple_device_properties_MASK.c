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
typedef  int /*<<< orphan*/  u32 ;
struct setup_data {long next; int /*<<< orphan*/  len; int /*<<< orphan*/  type; int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {unsigned long setup_data; } ;
struct boot_params {TYPE_1__ hdr; } ;
typedef  scalar_t__ efi_status_t ;
typedef  int /*<<< orphan*/  efi_guid_t ;

/* Variables and functions */
 int /*<<< orphan*/  APPLE_PROPERTIES_PROTOCOL_GUID ; 
 scalar_t__ EFI_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  EFI_LOADER_DATA ; 
 scalar_t__ EFI_SUCCESS ; 
 int /*<<< orphan*/  SETUP_APPLE_PROPERTIES ; 
 int /*<<< orphan*/  allocate_pool ; 
 int /*<<< orphan*/  apple_properties_protocol ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct setup_data*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  free_pool ; 
 int /*<<< orphan*/  get_all ; 
 int /*<<< orphan*/  locate_protocol ; 
 int /*<<< orphan*/  sys_table ; 
 int /*<<< orphan*/  version ; 

__attribute__((used)) static void FUNC4(struct boot_params *boot_params)
{
	efi_guid_t guid = APPLE_PROPERTIES_PROTOCOL_GUID;
	struct setup_data *data, *new;
	efi_status_t status;
	u32 size = 0;
	void *p;

	status = FUNC0(locate_protocol, &guid, NULL, &p);
	if (status != EFI_SUCCESS)
		return;

	if (FUNC3(apple_properties_protocol, version, p) != 0x10000) {
		FUNC2(sys_table, "Unsupported properties proto version\n");
		return;
	}

	FUNC1(apple_properties_protocol, get_all, p, NULL, &size);
	if (!size)
		return;

	do {
		status = FUNC0(allocate_pool, EFI_LOADER_DATA,
					size + sizeof(struct setup_data), &new);
		if (status != EFI_SUCCESS) {
			FUNC2(sys_table, "Failed to allocate memory for 'properties'\n");
			return;
		}

		status = FUNC1(apple_properties_protocol, get_all, p,
					new->data, &size);

		if (status == EFI_BUFFER_TOO_SMALL)
			FUNC0(free_pool, new);
	} while (status == EFI_BUFFER_TOO_SMALL);

	new->type = SETUP_APPLE_PROPERTIES;
	new->len  = size;
	new->next = 0;

	data = (struct setup_data *)(unsigned long)boot_params->hdr.setup_data;
	if (!data) {
		boot_params->hdr.setup_data = (unsigned long)new;
	} else {
		while (data->next)
			data = (struct setup_data *)(unsigned long)data->next;
		data->next = (unsigned long)new;
	}
}