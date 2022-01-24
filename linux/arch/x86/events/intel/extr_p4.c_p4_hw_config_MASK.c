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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int config; } ;
struct TYPE_3__ {scalar_t__ type; int config; int /*<<< orphan*/  exclude_user; int /*<<< orphan*/  exclude_kernel; } ;
struct perf_event {TYPE_2__ hw; TYPE_1__ attr; } ;
struct p4_event_bind {int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int P4_CONFIG_MASK ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PERF_TYPE_RAW ; 
 int FUNC2 () ; 
 struct p4_event_bind* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (struct perf_event*) ; 

__attribute__((used)) static int FUNC14(struct perf_event *event)
{
	int cpu = FUNC2();
	int rc = 0;
	u32 escr, cccr;

	/*
	 * the reason we use cpu that early is that: if we get scheduled
	 * first time on the same cpu -- we will not need swap thread
	 * specific flags in config (and will save some cpu cycles)
	 */

	cccr = FUNC6(cpu);
	escr = FUNC7(cpu, event->attr.exclude_kernel,
					 event->attr.exclude_user);
	event->hw.config = FUNC5(escr) |
			   FUNC4(cccr);

	if (FUNC8() && FUNC9(cpu))
		event->hw.config = FUNC10(event->hw.config);

	if (event->attr.type == PERF_TYPE_RAW) {
		struct p4_event_bind *bind;
		unsigned int esel;
		/*
		 * Clear bits we reserve to be managed by kernel itself
		 * and never allowed from a user space
		 */
		event->attr.config &= P4_CONFIG_MASK;

		rc = FUNC11(event);
		if (rc)
			goto out;

		/*
		 * Note that for RAW events we allow user to use P4_CCCR_RESERVED
		 * bits since we keep additional info here (for cache events and etc)
		 */
		event->hw.config |= event->attr.config;
		bind = FUNC3(event->attr.config);
		if (!bind) {
			rc = -EINVAL;
			goto out;
		}
		esel = FUNC1(bind->opcode);
		event->hw.config |= FUNC4(FUNC0(esel));
	}

	rc = FUNC13(event);
out:
	FUNC12();
	return rc;
}