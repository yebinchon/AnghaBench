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
typedef  void* u8 ;
struct kcs_bmc {int phase; int data_in_avail; void* error; int /*<<< orphan*/  data_out_idx; void** data_out; int /*<<< orphan*/  data_out_len; int /*<<< orphan*/  queue; int /*<<< orphan*/  data_in_idx; void** data_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_STATE ; 
 int /*<<< orphan*/  IDLE_STATE ; 
 void* KCS_CMD_READ_BYTE ; 
 void* KCS_LENGTH_ERROR ; 
 int /*<<< orphan*/  KCS_MSG_BUFSIZ ; 
#define  KCS_PHASE_ABORT_ERROR1 133 
#define  KCS_PHASE_ABORT_ERROR2 132 
 void* KCS_PHASE_IDLE ; 
#define  KCS_PHASE_READ 131 
#define  KCS_PHASE_WRITE_DATA 130 
 int KCS_PHASE_WRITE_DONE ; 
#define  KCS_PHASE_WRITE_END_CMD 129 
#define  KCS_PHASE_WRITE_START 128 
 void* KCS_ZERO_DATA ; 
 int /*<<< orphan*/  READ_STATE ; 
 int /*<<< orphan*/  WRITE_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct kcs_bmc*) ; 
 void* FUNC1 (struct kcs_bmc*) ; 
 int /*<<< orphan*/  FUNC2 (struct kcs_bmc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kcs_bmc*,void*) ; 

__attribute__((used)) static void FUNC5(struct kcs_bmc *kcs_bmc)
{
	u8 data;

	switch (kcs_bmc->phase) {
	case KCS_PHASE_WRITE_START:
		kcs_bmc->phase = KCS_PHASE_WRITE_DATA;
		/* fall through */

	case KCS_PHASE_WRITE_DATA:
		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
			FUNC2(kcs_bmc, WRITE_STATE);
			FUNC4(kcs_bmc, KCS_ZERO_DATA);
			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
						FUNC1(kcs_bmc);
		} else {
			FUNC0(kcs_bmc);
			kcs_bmc->error = KCS_LENGTH_ERROR;
		}
		break;

	case KCS_PHASE_WRITE_END_CMD:
		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
			FUNC2(kcs_bmc, READ_STATE);
			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
						FUNC1(kcs_bmc);
			kcs_bmc->phase = KCS_PHASE_WRITE_DONE;
			kcs_bmc->data_in_avail = true;
			FUNC3(&kcs_bmc->queue);
		} else {
			FUNC0(kcs_bmc);
			kcs_bmc->error = KCS_LENGTH_ERROR;
		}
		break;

	case KCS_PHASE_READ:
		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len)
			FUNC2(kcs_bmc, IDLE_STATE);

		data = FUNC1(kcs_bmc);
		if (data != KCS_CMD_READ_BYTE) {
			FUNC2(kcs_bmc, ERROR_STATE);
			FUNC4(kcs_bmc, KCS_ZERO_DATA);
			break;
		}

		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len) {
			FUNC4(kcs_bmc, KCS_ZERO_DATA);
			kcs_bmc->phase = KCS_PHASE_IDLE;
			break;
		}

		FUNC4(kcs_bmc,
			kcs_bmc->data_out[kcs_bmc->data_out_idx++]);
		break;

	case KCS_PHASE_ABORT_ERROR1:
		FUNC2(kcs_bmc, READ_STATE);
		FUNC1(kcs_bmc);
		FUNC4(kcs_bmc, kcs_bmc->error);
		kcs_bmc->phase = KCS_PHASE_ABORT_ERROR2;
		break;

	case KCS_PHASE_ABORT_ERROR2:
		FUNC2(kcs_bmc, IDLE_STATE);
		FUNC1(kcs_bmc);
		FUNC4(kcs_bmc, KCS_ZERO_DATA);
		kcs_bmc->phase = KCS_PHASE_IDLE;
		break;

	default:
		FUNC0(kcs_bmc);
		break;
	}
}