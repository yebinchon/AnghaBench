#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int n_sections; int /*<<< orphan*/  unsupported; int /*<<< orphan*/  plat_bus_err; int /*<<< orphan*/  host_ctlr_err; int /*<<< orphan*/  plat_specific_err; int /*<<< orphan*/  pci_comp_err; int /*<<< orphan*/  smbios_dev_err; int /*<<< orphan*/  pci_bus_err; int /*<<< orphan*/  sel_dev_err; int /*<<< orphan*/  mem_dev_err; int /*<<< orphan*/  proc_err; void* header; } ;
typedef  TYPE_1__ slidx_table_t ;
struct TYPE_7__ {int /*<<< orphan*/  guid; scalar_t__ len; } ;
typedef  TYPE_2__ sal_log_section_hdr_t ;
struct TYPE_8__ {int len; } ;
typedef  TYPE_3__ sal_log_record_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  SAL_PLAT_BUS_ERR_SECT_GUID ; 
 int /*<<< orphan*/  SAL_PLAT_HOST_CTLR_ERR_SECT_GUID ; 
 int /*<<< orphan*/  SAL_PLAT_MEM_DEV_ERR_SECT_GUID ; 
 int /*<<< orphan*/  SAL_PLAT_PCI_BUS_ERR_SECT_GUID ; 
 int /*<<< orphan*/  SAL_PLAT_PCI_COMP_ERR_SECT_GUID ; 
 int /*<<< orphan*/  SAL_PLAT_SEL_DEV_ERR_SECT_GUID ; 
 int /*<<< orphan*/  SAL_PLAT_SMBIOS_DEV_ERR_SECT_GUID ; 
 int /*<<< orphan*/  SAL_PLAT_SPECIFIC_ERR_SECT_GUID ; 
 int /*<<< orphan*/  SAL_PROC_DEV_ERR_SECT_GUID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(void *buffer, slidx_table_t *slidx)
{
	int platform_err = 0;
	int record_len = ((sal_log_record_header_t*)buffer)->len;
	u32 ercd_pos;
	int sects;
	sal_log_section_hdr_t *sp;

	/*
	 * Initialize index referring current record
	 */
	FUNC0(&(slidx->proc_err));
	FUNC0(&(slidx->mem_dev_err));
	FUNC0(&(slidx->sel_dev_err));
	FUNC0(&(slidx->pci_bus_err));
	FUNC0(&(slidx->smbios_dev_err));
	FUNC0(&(slidx->pci_comp_err));
	FUNC0(&(slidx->plat_specific_err));
	FUNC0(&(slidx->host_ctlr_err));
	FUNC0(&(slidx->plat_bus_err));
	FUNC0(&(slidx->unsupported));

	/*
	 * Extract a Record Header
	 */
	slidx->header = buffer;

	/*
	 * Extract each section records
	 * (arranged from "int ia64_log_platform_info_print()")
	 */
	for (ercd_pos = sizeof(sal_log_record_header_t), sects = 0;
		ercd_pos < record_len; ercd_pos += sp->len, sects++) {
		sp = (sal_log_section_hdr_t *)((char*)buffer + ercd_pos);
		if (!FUNC2(sp->guid, SAL_PROC_DEV_ERR_SECT_GUID)) {
			FUNC1(slidx->proc_err, sp);
		} else if (!FUNC2(sp->guid,
				SAL_PLAT_MEM_DEV_ERR_SECT_GUID)) {
			platform_err = 1;
			FUNC1(slidx->mem_dev_err, sp);
		} else if (!FUNC2(sp->guid,
				SAL_PLAT_SEL_DEV_ERR_SECT_GUID)) {
			platform_err = 1;
			FUNC1(slidx->sel_dev_err, sp);
		} else if (!FUNC2(sp->guid,
				SAL_PLAT_PCI_BUS_ERR_SECT_GUID)) {
			platform_err = 1;
			FUNC1(slidx->pci_bus_err, sp);
		} else if (!FUNC2(sp->guid,
				SAL_PLAT_SMBIOS_DEV_ERR_SECT_GUID)) {
			platform_err = 1;
			FUNC1(slidx->smbios_dev_err, sp);
		} else if (!FUNC2(sp->guid,
				SAL_PLAT_PCI_COMP_ERR_SECT_GUID)) {
			platform_err = 1;
			FUNC1(slidx->pci_comp_err, sp);
		} else if (!FUNC2(sp->guid,
				SAL_PLAT_SPECIFIC_ERR_SECT_GUID)) {
			platform_err = 1;
			FUNC1(slidx->plat_specific_err, sp);
		} else if (!FUNC2(sp->guid,
				SAL_PLAT_HOST_CTLR_ERR_SECT_GUID)) {
			platform_err = 1;
			FUNC1(slidx->host_ctlr_err, sp);
		} else if (!FUNC2(sp->guid,
				SAL_PLAT_BUS_ERR_SECT_GUID)) {
			platform_err = 1;
			FUNC1(slidx->plat_bus_err, sp);
		} else {
			FUNC1(slidx->unsupported, sp);
		}
	}
	slidx->n_sections = sects;

	return platform_err;
}