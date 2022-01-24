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
struct mce {int bank; int status; int /*<<< orphan*/  addr; int /*<<< orphan*/  tsc; } ;
struct cper_sec_mem_err {int validation_bits; int /*<<< orphan*/  physical_addr; } ;

/* Variables and functions */
 int CPER_MEM_VALID_PA ; 
 int GHES_SEV_PANIC ; 
 int GHES_SEV_RECOVERABLE ; 
 int MCI_STATUS_ADDRV ; 
 int MCI_STATUS_EN ; 
 int MCI_STATUS_PCC ; 
 int MCI_STATUS_UC ; 
 int MCI_STATUS_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct mce*) ; 
 int /*<<< orphan*/  FUNC1 (struct mce*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(int severity, struct cper_sec_mem_err *mem_err)
{
	struct mce m;

	if (!(mem_err->validation_bits & CPER_MEM_VALID_PA))
		return;

	FUNC1(&m);
	m.bank = -1;
	/* Fake a memory read error with unknown channel */
	m.status = MCI_STATUS_VAL | MCI_STATUS_EN | MCI_STATUS_ADDRV | 0x9f;

	if (severity >= GHES_SEV_RECOVERABLE)
		m.status |= MCI_STATUS_UC;

	if (severity >= GHES_SEV_PANIC) {
		m.status |= MCI_STATUS_PCC;
		m.tsc = FUNC2();
	}

	m.addr = mem_err->physical_addr;
	FUNC0(&m);
}