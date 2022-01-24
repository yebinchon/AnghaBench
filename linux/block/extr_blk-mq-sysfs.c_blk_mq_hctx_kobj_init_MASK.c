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
struct blk_mq_hw_ctx {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  blk_mq_hw_ktype ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(struct blk_mq_hw_ctx *hctx)
{
	FUNC0(&hctx->kobj, &blk_mq_hw_ktype);
}