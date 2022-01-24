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
struct multicall_entry {scalar_t__ result; int /*<<< orphan*/ * args; int /*<<< orphan*/  op; } ;
struct mc_buffer {int mcidx; scalar_t__ argidx; int cbidx; struct callback* callbacks; struct multicall_entry* entries; int /*<<< orphan*/ * caller; TYPE_1__* debug; } ;
struct callback {int /*<<< orphan*/  data; int /*<<< orphan*/  (* fn ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {int /*<<< orphan*/ * args; int /*<<< orphan*/  op; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct multicall_entry*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  mc_buffer ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct multicall_entry*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int /*<<< orphan*/ ,...) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct mc_buffer* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC14(void)
{
	struct mc_buffer *b = FUNC11(&mc_buffer);
	struct multicall_entry *mc;
	int ret = 0;
	unsigned long flags;
	int i;

	FUNC1(FUNC8());

	/* Disable interrupts in case someone comes in and queues
	   something in the middle */
	FUNC5(flags);

	FUNC12(b->mcidx, b->argidx, b->cbidx);

#if MC_DEBUG
	memcpy(b->debug, b->entries,
	       b->mcidx * sizeof(struct multicall_entry));
#endif

	switch (b->mcidx) {
	case 0:
		/* no-op */
		FUNC1(b->argidx != 0);
		break;

	case 1:
		/* Singleton multicall - bypass multicall machinery
		   and just do the call directly. */
		mc = &b->entries[0];

		mc->result = FUNC13(mc->op, mc->args[0], mc->args[1],
					     mc->args[2], mc->args[3],
					     mc->args[4]);
		ret = mc->result < 0;
		break;

	default:
		if (FUNC2(b->entries, b->mcidx) != 0)
			FUNC0();
		for (i = 0; i < b->mcidx; i++)
			if (b->entries[i].result < 0)
				ret++;
	}

	if (FUNC3(ret)) {
		FUNC7("%d of %d multicall(s) failed: cpu %d\n",
		       ret, b->mcidx, FUNC9());
		for (i = 0; i < b->mcidx; i++) {
			if (b->entries[i].result < 0) {
#if MC_DEBUG
				pr_err("  call %2d: op=%lu arg=[%lx] result=%ld\t%pS\n",
				       i + 1,
				       b->debug[i].op,
				       b->debug[i].args[0],
				       b->entries[i].result,
				       b->caller[i]);
#else
				FUNC7("  call %2d: op=%lu arg=[%lx] result=%ld\n",
				       i + 1,
				       b->entries[i].op,
				       b->entries[i].args[0],
				       b->entries[i].result);
#endif
			}
		}
	}

	b->mcidx = 0;
	b->argidx = 0;

	for (i = 0; i < b->cbidx; i++) {
		struct callback *cb = &b->callbacks[i];

		(*cb->fn)(cb->data);
	}
	b->cbidx = 0;

	FUNC4(flags);
}