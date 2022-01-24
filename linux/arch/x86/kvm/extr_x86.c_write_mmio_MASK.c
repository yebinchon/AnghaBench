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
struct kvm_vcpu {int dummy; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_TRACE_MMIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int,void*) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu, gpa_t gpa, int bytes, void *val)
{
	FUNC0(KVM_TRACE_MMIO_WRITE, bytes, gpa, val);
	return FUNC1(vcpu, gpa, bytes, val);
}