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
struct blk_mq_hw_ctx {int flags; } ;

/* Variables and functions */
 int const FUNC0 (char**) ; 
 int FUNC1 (int const) ; 
 int FUNC2 (int) ; 
 char** alloc_policy_name ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,int,char**,int const) ; 
 char** hctx_flag_name ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC6(void *data, struct seq_file *m)
{
	struct blk_mq_hw_ctx *hctx = data;
	const int alloc_policy = FUNC2(hctx->flags);

	FUNC5(m, "alloc_policy=");
	if (alloc_policy < FUNC0(alloc_policy_name) &&
	    alloc_policy_name[alloc_policy])
		FUNC5(m, alloc_policy_name[alloc_policy]);
	else
		FUNC4(m, "%d", alloc_policy);
	FUNC5(m, " ");
	FUNC3(m,
		       hctx->flags ^ FUNC1(alloc_policy),
		       hctx_flag_name, FUNC0(hctx_flag_name));
	FUNC5(m, "\n");
	return 0;
}