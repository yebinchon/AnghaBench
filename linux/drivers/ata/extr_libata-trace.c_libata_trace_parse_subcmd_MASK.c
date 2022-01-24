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
#define  ATA_CMD_FPDMA_RECV 145 
#define  ATA_CMD_FPDMA_SEND 144 
#define  ATA_CMD_NCQ_NON_DATA 143 
#define  ATA_CMD_ZAC_MGMT_IN 142 
#define  ATA_CMD_ZAC_MGMT_OUT 141 
#define  ATA_SUBCMD_FPDMA_RECV_RD_LOG_DMA_EXT 140 
#define  ATA_SUBCMD_FPDMA_RECV_ZAC_MGMT_IN 139 
#define  ATA_SUBCMD_FPDMA_SEND_DSM 138 
#define  ATA_SUBCMD_FPDMA_SEND_WR_LOG_DMA_EXT 137 
#define  ATA_SUBCMD_NCQ_NON_DATA_ABORT_QUEUE 136 
#define  ATA_SUBCMD_NCQ_NON_DATA_SET_FEATURES 135 
#define  ATA_SUBCMD_NCQ_NON_DATA_ZAC_MGMT_OUT 134 
#define  ATA_SUBCMD_NCQ_NON_DATA_ZERO_EXT 133 
#define  ATA_SUBCMD_ZAC_MGMT_IN_REPORT_ZONES 132 
#define  ATA_SUBCMD_ZAC_MGMT_OUT_CLOSE_ZONE 131 
#define  ATA_SUBCMD_ZAC_MGMT_OUT_FINISH_ZONE 130 
#define  ATA_SUBCMD_ZAC_MGMT_OUT_OPEN_ZONE 129 
#define  ATA_SUBCMD_ZAC_MGMT_OUT_RESET_WRITE_POINTER 128 
 char* FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,int /*<<< orphan*/ ) ; 

const char *
FUNC3(struct trace_seq *p, unsigned char cmd,
			  unsigned char feature, unsigned char hob_nsect)
{
	const char *ret = FUNC0(p);

	switch (cmd) {
	case ATA_CMD_FPDMA_RECV:
		switch (hob_nsect & 0x5f) {
		case ATA_SUBCMD_FPDMA_RECV_RD_LOG_DMA_EXT:
			FUNC1(p, " READ_LOG_DMA_EXT");
			break;
		case ATA_SUBCMD_FPDMA_RECV_ZAC_MGMT_IN:
			FUNC1(p, " ZAC_MGMT_IN");
			break;
		}
		break;
	case ATA_CMD_FPDMA_SEND:
		switch (hob_nsect & 0x5f) {
		case ATA_SUBCMD_FPDMA_SEND_WR_LOG_DMA_EXT:
			FUNC1(p, " WRITE_LOG_DMA_EXT");
			break;
		case ATA_SUBCMD_FPDMA_SEND_DSM:
			FUNC1(p, " DATASET_MANAGEMENT");
			break;
		}
		break;
	case ATA_CMD_NCQ_NON_DATA:
		switch (feature) {
		case ATA_SUBCMD_NCQ_NON_DATA_ABORT_QUEUE:
			FUNC1(p, " ABORT_QUEUE");
			break;
		case ATA_SUBCMD_NCQ_NON_DATA_SET_FEATURES:
			FUNC1(p, " SET_FEATURES");
			break;
		case ATA_SUBCMD_NCQ_NON_DATA_ZERO_EXT:
			FUNC1(p, " ZERO_EXT");
			break;
		case ATA_SUBCMD_NCQ_NON_DATA_ZAC_MGMT_OUT:
			FUNC1(p, " ZAC_MGMT_OUT");
			break;
		}
		break;
	case ATA_CMD_ZAC_MGMT_IN:
		switch (feature) {
		case ATA_SUBCMD_ZAC_MGMT_IN_REPORT_ZONES:
			FUNC1(p, " REPORT_ZONES");
			break;
		}
		break;
	case ATA_CMD_ZAC_MGMT_OUT:
		switch (feature) {
		case ATA_SUBCMD_ZAC_MGMT_OUT_CLOSE_ZONE:
			FUNC1(p, " CLOSE_ZONE");
			break;
		case ATA_SUBCMD_ZAC_MGMT_OUT_FINISH_ZONE:
			FUNC1(p, " FINISH_ZONE");
			break;
		case ATA_SUBCMD_ZAC_MGMT_OUT_OPEN_ZONE:
			FUNC1(p, " OPEN_ZONE");
			break;
		case ATA_SUBCMD_ZAC_MGMT_OUT_RESET_WRITE_POINTER:
			FUNC1(p, " RESET_WRITE_POINTER");
			break;
		}
		break;
	}
	FUNC2(p, 0);

	return ret;
}