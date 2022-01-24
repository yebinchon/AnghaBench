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
struct kvm_vcpu_hv_synic {int /*<<< orphan*/ * sint; } ;

/* Variables and functions */
 int HV_SYNIC_FIRST_VALID_VECTOR ; 
 int HV_SYNIC_SINT_MASKED ; 
 int HV_SYNIC_SINT_VECTOR_MASK ; 
 int /*<<< orphan*/  KVM_REQ_SCAN_IOAPIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm_vcpu_hv_synic*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu_hv_synic*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu_hv_synic*,int) ; 

__attribute__((used)) static int FUNC5(struct kvm_vcpu_hv_synic *synic, int sint,
			  u64 data, bool host)
{
	int vector, old_vector;
	bool masked;

	vector = data & HV_SYNIC_SINT_VECTOR_MASK;
	masked = data & HV_SYNIC_SINT_MASKED;

	/*
	 * Valid vectors are 16-255, however, nested Hyper-V attempts to write
	 * default '0x10000' value on boot and this should not #GP. We need to
	 * allow zero-initing the register from host as well.
	 */
	if (vector < HV_SYNIC_FIRST_VALID_VECTOR && !host && !masked)
		return 1;
	/*
	 * Guest may configure multiple SINTs to use the same vector, so
	 * we maintain a bitmap of vectors handled by synic, and a
	 * bitmap of vectors with auto-eoi behavior.  The bitmaps are
	 * updated here, and atomically queried on fast paths.
	 */
	old_vector = FUNC2(synic, sint) & HV_SYNIC_SINT_VECTOR_MASK;

	FUNC0(&synic->sint[sint], data);

	FUNC4(synic, old_vector);

	FUNC4(synic, vector);

	/* Load SynIC vectors into EOI exit bitmap */
	FUNC1(KVM_REQ_SCAN_IOAPIC, FUNC3(synic));
	return 0;
}