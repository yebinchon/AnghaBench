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
typedef  int u64 ;
struct hv_guest_mapping_flush {int address_space; scalar_t__ flags; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_SPACE ; 
 int HV_HYPERCALL_RESULT_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct hv_guest_mapping_flush*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hv_hypercall_pg ; 
 int /*<<< orphan*/  hyperv_pcpu_input_arg ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(u64 as)
{
	struct hv_guest_mapping_flush **flush_pcpu;
	struct hv_guest_mapping_flush *flush;
	u64 status;
	unsigned long flags;
	int ret = -ENOTSUPP;

	if (!hv_hypercall_pg)
		goto fault;

	FUNC2(flags);

	flush_pcpu = (struct hv_guest_mapping_flush **)
		FUNC3(hyperv_pcpu_input_arg);

	flush = *flush_pcpu;

	if (FUNC5(!flush)) {
		FUNC1(flags);
		goto fault;
	}

	flush->address_space = as;
	flush->flags = 0;

	status = FUNC0(HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_SPACE,
				 flush, NULL);
	FUNC1(flags);

	if (!(status & HV_HYPERCALL_RESULT_MASK))
		ret = 0;

fault:
	FUNC4(as, ret);
	return ret;
}