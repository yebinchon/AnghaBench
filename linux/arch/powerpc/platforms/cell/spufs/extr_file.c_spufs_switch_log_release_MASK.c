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
struct spu_context {int /*<<< orphan*/ * switch_log; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct spu_context* i_ctx; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct spu_context*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct spu_context *ctx = FUNC0(inode)->i_ctx;
	int rc;

	rc = FUNC2(ctx);
	if (rc)
		return rc;

	FUNC1(ctx->switch_log);
	ctx->switch_log = NULL;
	FUNC3(ctx);

	return 0;
}