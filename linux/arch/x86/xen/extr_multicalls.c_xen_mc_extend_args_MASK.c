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
struct multicall_space {int /*<<< orphan*/ * args; TYPE_1__* mc; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct mc_buffer {size_t argidx; int mcidx; int /*<<< orphan*/ * args; TYPE_1__* entries; } ;
struct TYPE_2__ {unsigned long op; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t MC_ARGS ; 
 int /*<<< orphan*/  XEN_MC_XE_BAD_OP ; 
 int /*<<< orphan*/  XEN_MC_XE_NO_SPACE ; 
 int /*<<< orphan*/  XEN_MC_XE_OK ; 
 int /*<<< orphan*/  mc_buffer ; 
 int FUNC1 () ; 
 struct mc_buffer* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

struct multicall_space FUNC5(unsigned long op, size_t size)
{
	struct mc_buffer *b = FUNC2(&mc_buffer);
	struct multicall_space ret = { NULL, NULL };

	FUNC0(FUNC1());
	FUNC0(b->argidx >= MC_ARGS);

	if (FUNC4(b->mcidx == 0 ||
		     b->entries[b->mcidx - 1].op != op)) {
		FUNC3(op, size, XEN_MC_XE_BAD_OP);
		goto out;
	}

	if (FUNC4((b->argidx + size) >= MC_ARGS)) {
		FUNC3(op, size, XEN_MC_XE_NO_SPACE);
		goto out;
	}

	ret.mc = &b->entries[b->mcidx - 1];
	ret.args = &b->args[b->argidx];
	b->argidx += size;

	FUNC0(b->argidx >= MC_ARGS);

	FUNC3(op, size, XEN_MC_XE_OK);
out:
	return ret;
}