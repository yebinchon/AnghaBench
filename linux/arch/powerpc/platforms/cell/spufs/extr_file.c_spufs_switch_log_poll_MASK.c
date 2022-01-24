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
struct spu_context {TYPE_1__* switch_log; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;
struct TYPE_4__ {struct spu_context* i_ctx; } ;
struct TYPE_3__ {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int EPOLLIN ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct spu_context*) ; 
 scalar_t__ FUNC5 (struct spu_context*) ; 

__attribute__((used)) static __poll_t FUNC6(struct file *file, poll_table *wait)
{
	struct inode *inode = FUNC1(file);
	struct spu_context *ctx = FUNC0(inode)->i_ctx;
	__poll_t mask = 0;
	int rc;

	FUNC2(file, &ctx->switch_log->wait, wait);

	rc = FUNC3(ctx);
	if (rc)
		return rc;

	if (FUNC5(ctx) > 0)
		mask |= EPOLLIN;

	FUNC4(ctx);

	return mask;
}