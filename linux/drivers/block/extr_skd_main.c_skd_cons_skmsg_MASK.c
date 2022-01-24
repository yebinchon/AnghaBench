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
typedef  size_t u32 ;
struct skd_fitmsg_context {uintptr_t mb_dma_address; int /*<<< orphan*/ * msg_buf; scalar_t__ id; } ;
struct skd_device {int num_fitmsg_context; TYPE_1__* pdev; struct skd_fitmsg_context* skmsg_table; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FIT_QCMD_ALIGN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SKD_ID_FIT_MSG ; 
 int /*<<< orphan*/  SKD_N_FITMSG_BYTES ; 
 int /*<<< orphan*/  FUNC0 (uintptr_t,char*,int /*<<< orphan*/ *,uintptr_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,uintptr_t*,int /*<<< orphan*/ ) ; 
 struct skd_fitmsg_context* FUNC3 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct skd_device *skdev)
{
	int rc = 0;
	u32 i;

	FUNC1(&skdev->pdev->dev,
		"skmsg_table kcalloc, struct %lu, count %u total %lu\n",
		sizeof(struct skd_fitmsg_context), skdev->num_fitmsg_context,
		sizeof(struct skd_fitmsg_context) * skdev->num_fitmsg_context);

	skdev->skmsg_table = FUNC3(skdev->num_fitmsg_context,
				     sizeof(struct skd_fitmsg_context),
				     GFP_KERNEL);
	if (skdev->skmsg_table == NULL) {
		rc = -ENOMEM;
		goto err_out;
	}

	for (i = 0; i < skdev->num_fitmsg_context; i++) {
		struct skd_fitmsg_context *skmsg;

		skmsg = &skdev->skmsg_table[i];

		skmsg->id = i + SKD_ID_FIT_MSG;

		skmsg->msg_buf = FUNC2(&skdev->pdev->dev,
						    SKD_N_FITMSG_BYTES,
						    &skmsg->mb_dma_address,
						    GFP_KERNEL);
		if (skmsg->msg_buf == NULL) {
			rc = -ENOMEM;
			goto err_out;
		}

		FUNC0(((uintptr_t)skmsg->msg_buf | skmsg->mb_dma_address) &
		     (FIT_QCMD_ALIGN - 1),
		     "not aligned: msg_buf %p mb_dma_address %pad\n",
		     skmsg->msg_buf, &skmsg->mb_dma_address);
	}

err_out:
	return rc;
}