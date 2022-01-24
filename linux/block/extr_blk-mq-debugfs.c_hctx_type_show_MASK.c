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
struct seq_file {int dummy; } ;
struct blk_mq_hw_ctx {size_t type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ HCTX_MAX_TYPES ; 
 int /*<<< orphan*/ * hctx_types ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *data, struct seq_file *m)
{
	struct blk_mq_hw_ctx *hctx = data;

	FUNC1(FUNC0(hctx_types) != HCTX_MAX_TYPES);
	FUNC2(m, "%s\n", hctx_types[hctx->type]);
	return 0;
}