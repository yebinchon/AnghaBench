#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spu_context {TYPE_2__* spu; } ;
struct TYPE_4__ {int /*<<< orphan*/  register_lock; TYPE_1__* problem; } ;
struct TYPE_3__ {int /*<<< orphan*/  spu_status_R; int /*<<< orphan*/  spu_runcntl_RW; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPU_RUNCNTL_STOP ; 
 int SPU_STATUS_RUNNING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct spu_context *ctx)
{
	FUNC3(&ctx->spu->register_lock);
	FUNC2(&ctx->spu->problem->spu_runcntl_RW, SPU_RUNCNTL_STOP);
	while (FUNC1(&ctx->spu->problem->spu_status_R) & SPU_STATUS_RUNNING)
		FUNC0();
	FUNC4(&ctx->spu->register_lock);
}