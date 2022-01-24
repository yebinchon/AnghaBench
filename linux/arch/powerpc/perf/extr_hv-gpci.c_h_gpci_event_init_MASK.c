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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ config2; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__* pmu; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 scalar_t__ HGPCI_MAX_DATA_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 int FUNC1 (struct perf_event*) ; 
 scalar_t__ FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 scalar_t__ FUNC6 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct perf_event *event)
{
	u64 count;
	u8 length;

	/* Not our event */
	if (event->attr.type != event->pmu->type)
		return -ENOENT;

	/* config2 is unused */
	if (event->attr.config2) {
		FUNC7("config2 set when reserved\n");
		return -EINVAL;
	}

	/* no branch sampling */
	if (FUNC6(event))
		return -EOPNOTSUPP;

	length = FUNC1(event);
	if (length < 1 || length > 8) {
		FUNC7("length invalid\n");
		return -EINVAL;
	}

	/* last byte within the buffer? */
	if ((FUNC2(event) + length) > HGPCI_MAX_DATA_BYTES) {
		FUNC7("request outside of buffer: %zu > %zu\n",
				(size_t)FUNC2(event) + length,
				HGPCI_MAX_DATA_BYTES);
		return -EINVAL;
	}

	/* check if the request works... */
	if (FUNC8(FUNC3(event),
				FUNC5(event),
				FUNC4(event),
				FUNC0(event),
				FUNC2(event),
				length,
				&count)) {
		FUNC7("gpci hcall failed\n");
		return -EINVAL;
	}

	return 0;
}