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
struct trace_seq {int dummy; } ;

/* Variables and functions */
 unsigned int ATA_QCFLAG_ACTIVE ; 
 unsigned int ATA_QCFLAG_CLEAR_EXCL ; 
 unsigned int ATA_QCFLAG_DMAMAP ; 
 unsigned int ATA_QCFLAG_EH_SCHEDULED ; 
 unsigned int ATA_QCFLAG_FAILED ; 
 unsigned int ATA_QCFLAG_IO ; 
 unsigned int ATA_QCFLAG_QUIET ; 
 unsigned int ATA_QCFLAG_RESULT_TF ; 
 unsigned int ATA_QCFLAG_RETRY ; 
 unsigned int ATA_QCFLAG_SENSE_VALID ; 
 char* FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char) ; 

const char *
FUNC3(struct trace_seq *p, unsigned int qc_flags)
{
	const char *ret = FUNC0(p);

	FUNC1(p, "%x", qc_flags);
	if (qc_flags) {
		FUNC1(p, "{ ");
		if (qc_flags & ATA_QCFLAG_ACTIVE)
			FUNC1(p, "ACTIVE ");
		if (qc_flags & ATA_QCFLAG_DMAMAP)
			FUNC1(p, "DMAMAP ");
		if (qc_flags & ATA_QCFLAG_IO)
			FUNC1(p, "IO ");
		if (qc_flags & ATA_QCFLAG_RESULT_TF)
			FUNC1(p, "RESULT_TF ");
		if (qc_flags & ATA_QCFLAG_CLEAR_EXCL)
			FUNC1(p, "CLEAR_EXCL ");
		if (qc_flags & ATA_QCFLAG_QUIET)
			FUNC1(p, "QUIET ");
		if (qc_flags & ATA_QCFLAG_RETRY)
			FUNC1(p, "RETRY ");
		if (qc_flags & ATA_QCFLAG_FAILED)
			FUNC1(p, "FAILED ");
		if (qc_flags & ATA_QCFLAG_SENSE_VALID)
			FUNC1(p, "SENSE_VALID ");
		if (qc_flags & ATA_QCFLAG_EH_SCHEDULED)
			FUNC1(p, "EH_SCHEDULED ");
		FUNC2(p, '}');
	}
	FUNC2(p, 0);

	return ret;
}