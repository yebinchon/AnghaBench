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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GAL_ISC ; 
 int /*<<< orphan*/  KVM_DEV_TYPE_FLIC ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debug_sprintf_view ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_flic_ops ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  kvm_s390_dbf ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

int FUNC8(void *opaque)
{
	int rc;

	kvm_s390_dbf = FUNC0("kvm-trace", 32, 1, 7 * sizeof(long));
	if (!kvm_s390_dbf)
		return -ENOMEM;

	if (FUNC1(kvm_s390_dbf, &debug_sprintf_view)) {
		rc = -ENOMEM;
		goto out_debug_unreg;
	}

	FUNC4();

	/* Register floating interrupt controller interface. */
	rc = FUNC3(&kvm_flic_ops, KVM_DEV_TYPE_FLIC);
	if (rc) {
		FUNC7("A FLIC registration call failed with rc=%d\n", rc);
		goto out_debug_unreg;
	}

	rc = FUNC6(GAL_ISC);
	if (rc)
		goto out_gib_destroy;

	return 0;

out_gib_destroy:
	FUNC5();
out_debug_unreg:
	FUNC2(kvm_s390_dbf);
	return rc;
}