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
struct eeh_pe {int config_addr; int addr; TYPE_1__* phb; } ;
struct TYPE_2__ {int /*<<< orphan*/  buid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_TYPE_RTAS_LOG ; 
 int /*<<< orphan*/  eeh_error_buf_size ; 
 int /*<<< orphan*/  ibm_slot_error_detail ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* slot_errbuf ; 
 int /*<<< orphan*/  slot_errbuf_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct eeh_pe *pe, int severity, char *drv_log, unsigned long len)
{
	int config_addr;
	unsigned long flags;
	int ret;

	FUNC5(&slot_errbuf_lock, flags);
	FUNC3(slot_errbuf, 0, eeh_error_buf_size);

	/* Figure out the PE address */
	config_addr = pe->config_addr;
	if (pe->addr)
		config_addr = pe->addr;

	ret = FUNC4(ibm_slot_error_detail, 8, 1, NULL, config_addr,
			FUNC0(pe->phb->buid), FUNC1(pe->phb->buid),
			FUNC7(drv_log), len,
			FUNC7(slot_errbuf), eeh_error_buf_size,
			severity);
	if (!ret)
		FUNC2(slot_errbuf, ERR_TYPE_RTAS_LOG, 0);
	FUNC6(&slot_errbuf_lock, flags);

	return ret;
}