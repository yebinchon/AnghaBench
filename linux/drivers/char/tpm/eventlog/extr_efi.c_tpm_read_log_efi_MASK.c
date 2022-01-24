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
typedef  int u8 ;
typedef  int u32 ;
struct tpm_bios_log {void* bios_event_log; void* bios_event_log_end; } ;
struct tpm_chip {int flags; struct tpm_bios_log log; } ;
struct linux_efi_tpm_eventlog {int size; int version; scalar_t__ final_events_preboot_size; scalar_t__ events; int /*<<< orphan*/  log; } ;
struct efi_tcg2_final_events_table {int size; int version; scalar_t__ final_events_preboot_size; scalar_t__ events; int /*<<< orphan*/  log; } ;
struct TYPE_2__ {scalar_t__ tpm_log; scalar_t__ tpm_final_log; } ;

/* Variables and functions */
 scalar_t__ EFI_INVALID_TABLE_ADDR ; 
 int EFI_TCG2_EVENT_LOG_FORMAT_TCG_2 ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEMREMAP_WB ; 
 int TPM_CHIP_FLAG_TPM2 ; 
 TYPE_1__ efi ; 
 int efi_tpm_final_log_size ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__,int) ; 
 struct linux_efi_tpm_eventlog* FUNC4 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct linux_efi_tpm_eventlog*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(struct tpm_chip *chip)
{

	struct efi_tcg2_final_events_table *final_tbl = NULL;
	struct linux_efi_tpm_eventlog *log_tbl;
	struct tpm_bios_log *log;
	u32 log_size;
	u8 tpm_log_version;
	void *tmp;
	int ret;

	if (!(chip->flags & TPM_CHIP_FLAG_TPM2))
		return -ENODEV;

	if (efi.tpm_log == EFI_INVALID_TABLE_ADDR)
		return -ENODEV;

	log = &chip->log;

	log_tbl = FUNC4(efi.tpm_log, sizeof(*log_tbl), MEMREMAP_WB);
	if (!log_tbl) {
		FUNC6("Could not map UEFI TPM log table !\n");
		return -ENOMEM;
	}

	log_size = log_tbl->size;
	FUNC5(log_tbl);

	log_tbl = FUNC4(efi.tpm_log, sizeof(*log_tbl) + log_size,
			   MEMREMAP_WB);
	if (!log_tbl) {
		FUNC6("Could not map UEFI TPM log table payload!\n");
		return -ENOMEM;
	}

	/* malloc EventLog space */
	log->bios_event_log = FUNC1(log_tbl->log, log_size, GFP_KERNEL);
	if (!log->bios_event_log) {
		ret = -ENOMEM;
		goto out;
	}

	log->bios_event_log_end = log->bios_event_log + log_size;
	tpm_log_version = log_tbl->version;

	ret = tpm_log_version;

	if (efi.tpm_final_log == EFI_INVALID_TABLE_ADDR ||
	    efi_tpm_final_log_size == 0 ||
	    tpm_log_version != EFI_TCG2_EVENT_LOG_FORMAT_TCG_2)
		goto out;

	final_tbl = FUNC4(efi.tpm_final_log,
			     sizeof(*final_tbl) + efi_tpm_final_log_size,
			     MEMREMAP_WB);
	if (!final_tbl) {
		FUNC6("Could not map UEFI TPM final log\n");
		FUNC0(log->bios_event_log);
		ret = -ENOMEM;
		goto out;
	}

	efi_tpm_final_log_size -= log_tbl->final_events_preboot_size;

	tmp = FUNC2(log->bios_event_log,
		       log_size + efi_tpm_final_log_size,
		       GFP_KERNEL);
	if (!tmp) {
		FUNC0(log->bios_event_log);
		ret = -ENOMEM;
		goto out;
	}

	log->bios_event_log = tmp;

	/*
	 * Copy any of the final events log that didn't also end up in the
	 * main log. Events can be logged in both if events are generated
	 * between GetEventLog() and ExitBootServices().
	 */
	FUNC3((void *)log->bios_event_log + log_size,
	       final_tbl->events + log_tbl->final_events_preboot_size,
	       efi_tpm_final_log_size);
	log->bios_event_log_end = log->bios_event_log +
		log_size + efi_tpm_final_log_size;

out:
	FUNC5(final_tbl);
	FUNC5(log_tbl);
	return ret;
}