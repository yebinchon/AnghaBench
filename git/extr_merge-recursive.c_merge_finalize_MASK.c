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
struct merge_options {int buffer_output; TYPE_1__* priv; int /*<<< orphan*/  obuf; } ;
struct TYPE_2__ {int /*<<< orphan*/  needed_rename_limit; int /*<<< orphan*/  call_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct merge_options*) ; 
 scalar_t__ FUNC3 (struct merge_options*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct merge_options *opt)
{
	FUNC2(opt);
	if (!opt->priv->call_depth && opt->buffer_output < 2)
		FUNC4(&opt->obuf);
	if (FUNC3(opt, 2))
		FUNC1("merge.renamelimit",
				       opt->priv->needed_rename_limit, 0);
	FUNC0(opt->priv);
}