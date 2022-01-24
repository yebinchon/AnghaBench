#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  int_mask_class2_RW; } ;
struct TYPE_4__ {int mb_stat_R; } ;
struct TYPE_6__ {int* spu_chnlcnt_RW; int /*<<< orphan*/  register_lock; TYPE_2__ priv1; TYPE_1__ prob; int /*<<< orphan*/ * spu_mailbox_data; } ;
struct spu_context {TYPE_3__ csa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CLASS2_ENABLE_MAILBOX_THRESHOLD_INTR ; 
 int /*<<< orphan*/  MFC_SPU_MAILBOX_WRITTEN_EVENT ; 
 int /*<<< orphan*/  FUNC1 (struct spu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct spu_context *ctx, u32 data)
{
	int ret;

	FUNC2(&ctx->csa.register_lock);
	if ((ctx->csa.prob.mb_stat_R) & 0x00ff00) {
		int slot = ctx->csa.spu_chnlcnt_RW[29];
		int avail = (ctx->csa.prob.mb_stat_R & 0x00ff00) >> 8;

		/* We have space to write wbox_data.
		 * Implementation note: the depth
		 * of spu_mb_W is currently 4.
		 */
		FUNC0(avail != (4 - slot));
		ctx->csa.spu_mailbox_data[slot] = data;
		ctx->csa.spu_chnlcnt_RW[29] = ++slot;
		ctx->csa.prob.mb_stat_R &= ~(0x00ff00);
		ctx->csa.prob.mb_stat_R |= (((4 - slot) & 0xff) << 8);
		FUNC1(ctx, MFC_SPU_MAILBOX_WRITTEN_EVENT);
		ret = 4;
	} else {
		/* make sure we get woken up by the interrupt when space
		   becomes available */
		ctx->csa.priv1.int_mask_class2_RW |=
			CLASS2_ENABLE_MAILBOX_THRESHOLD_INTR;
		ret = 0;
	}
	FUNC3(&ctx->csa.register_lock);
	return ret;
}