#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_6__ {int /*<<< orphan*/  prev_count; } ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  config2; int /*<<< orphan*/  config1; int /*<<< orphan*/  config; } ;
struct perf_event {TYPE_3__ hw; TYPE_2__ attr; TYPE_1__* pmu; } ;
struct hv_perf_caps {int /*<<< orphan*/  collect_privileged; } ;
struct TYPE_4__ {scalar_t__ type; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 unsigned int HV_PERF_DOMAIN_MAX ; 
 unsigned int FUNC0 (struct perf_event*) ; 
 scalar_t__ FUNC1 (struct perf_event*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (struct perf_event*) ; 
 scalar_t__ FUNC4 (struct perf_event*) ; 
 scalar_t__ FUNC5 (struct perf_event*) ; 
 scalar_t__ FUNC6 (struct perf_event*) ; 
 scalar_t__ FUNC7 (struct perf_event*) ; 
 unsigned long FUNC8 (struct hv_perf_caps*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ FUNC12 (struct perf_event*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct perf_event *event)
{
	struct hv_perf_caps caps;
	unsigned domain;
	unsigned long hret;
	u64 ct;

	/* Not our event */
	if (event->attr.type != event->pmu->type)
		return -ENOENT;

	/* Unused areas must be 0 */
	if (FUNC4(event) ||
	    FUNC5(event) ||
	    FUNC6(event)) {
		FUNC11("reserved set when forbidden 0x%llx(0x%llx) 0x%llx(0x%llx) 0x%llx(0x%llx)\n",
				event->attr.config,
				FUNC4(event),
				event->attr.config1,
				FUNC5(event),
				event->attr.config2,
				FUNC6(event));
		return -EINVAL;
	}

	/* no branch sampling */
	if (FUNC7(event))
		return -EOPNOTSUPP;

	/* offset must be 8 byte aligned */
	if (FUNC3(event) % 8) {
		FUNC11("bad alignment\n");
		return -EINVAL;
	}

	domain = FUNC0(event);
	if (domain >= HV_PERF_DOMAIN_MAX) {
		FUNC11("invalid domain %d\n", domain);
		return -EINVAL;
	}

	hret = FUNC8(&caps);
	if (hret) {
		FUNC11("could not get capabilities: rc=%ld\n", hret);
		return -EIO;
	}

	/* Physical domains & other lpars require extra capabilities */
	if (!caps.collect_privileged && (FUNC9(domain) ||
		(FUNC1(event) != FUNC2()))) {
		FUNC11("hv permissions disallow: is_physical_domain:%d, lpar=0x%llx\n",
				FUNC9(domain),
				FUNC1(event));
		return -EACCES;
	}

	/* Get the initial value of the counter for this event */
	if (FUNC12(event, &ct)) {
		FUNC11("test hcall failed\n");
		return -EIO;
	}
	(void)FUNC10(&event->hw.prev_count, ct);

	return 0;
}