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
typedef  int u64 ;
struct spu_context {struct spu* spu; } ;
struct spu {int /*<<< orphan*/  register_lock; } ;

/* Variables and functions */
 int MFC_STATE1_MASTER_RUN_CONTROL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct spu*) ; 
 int /*<<< orphan*/  FUNC3 (struct spu*,int) ; 

__attribute__((used)) static void FUNC4(struct spu_context *ctx)
{
	struct spu *spu = ctx->spu;
	u64 sr1;

	FUNC0(&spu->register_lock);
	sr1 = FUNC2(spu) & ~MFC_STATE1_MASTER_RUN_CONTROL_MASK;
	FUNC3(spu, sr1);
	FUNC1(&spu->register_lock);
}