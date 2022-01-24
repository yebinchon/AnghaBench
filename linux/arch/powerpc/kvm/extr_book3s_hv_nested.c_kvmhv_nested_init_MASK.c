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
struct patb_entry {int dummy; } ;

/* Variables and functions */
 long ENODEV ; 
 long ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  H_SET_PARTITION_TABLE ; 
 long H_SUCCESS ; 
 scalar_t__ KVMPPC_NR_LPIDS ; 
 int FUNC0 (scalar_t__) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 long FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/ * pseries_partition_tb ; 
 int /*<<< orphan*/  FUNC7 () ; 

long FUNC8(void)
{
	long int ptb_order;
	unsigned long ptcr;
	long rc;

	if (!FUNC4())
		return 0;
	if (!FUNC7())
		return -ENODEV;

	/* find log base 2 of KVMPPC_NR_LPIDS, rounding up */
	ptb_order = FUNC0(KVMPPC_NR_LPIDS - 1) + 1;
	if (ptb_order < 8)
		ptb_order = 8;
	pseries_partition_tb = FUNC3(sizeof(struct patb_entry) << ptb_order,
				       GFP_KERNEL);
	if (!pseries_partition_tb) {
		FUNC6("kvm-hv: failed to allocated nested partition table\n");
		return -ENOMEM;
	}

	ptcr = FUNC1(pseries_partition_tb) | (ptb_order - 8);
	rc = FUNC5(H_SET_PARTITION_TABLE, ptcr);
	if (rc != H_SUCCESS) {
		FUNC6("kvm-hv: Parent hypervisor does not support nesting (rc=%ld)\n",
		       rc);
		FUNC2(pseries_partition_tb);
		pseries_partition_tb = NULL;
		return -ENODEV;
	}

	return 0;
}