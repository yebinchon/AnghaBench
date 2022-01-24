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
struct ata_queued_cmd {int err_mask; } ;

/* Variables and functions */
 int AC_ERR_DEV ; 
 int /*<<< orphan*/  FUNC0 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_queued_cmd*) ; 

__attribute__((used)) static void FUNC2(struct ata_queued_cmd *qc)
{
	if (qc->err_mask && ((qc->err_mask & AC_ERR_DEV) == 0)) {
		/* FIXME: not quite right; we don't want the
		 * translation of taskfile registers into
		 * a sense descriptors, since that's only
		 * correct for ATA, not ATAPI
		 */
		FUNC0(qc);
	}

	FUNC1(qc);
}