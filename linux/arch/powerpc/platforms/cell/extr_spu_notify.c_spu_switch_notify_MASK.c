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
struct spu_context {int /*<<< orphan*/  object_id; } ;
struct spu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct spu*) ; 
 int /*<<< orphan*/  spu_switch_notifier ; 

void FUNC1(struct spu *spu, struct spu_context *ctx)
{
	FUNC0(&spu_switch_notifier,
				     ctx ? ctx->object_id : 0, spu);
}