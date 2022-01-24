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
struct TYPE_2__ {int /*<<< orphan*/  dr7; int /*<<< orphan*/  db; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_debugregs {unsigned long dr6; int /*<<< orphan*/  reserved; scalar_t__ flags; int /*<<< orphan*/  dr7; int /*<<< orphan*/  db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu,
					     struct kvm_debugregs *dbgregs)
{
	unsigned long val;

	FUNC1(dbgregs->db, vcpu->arch.db, sizeof(vcpu->arch.db));
	FUNC0(vcpu, 6, &val);
	dbgregs->dr6 = val;
	dbgregs->dr7 = vcpu->arch.dr7;
	dbgregs->flags = 0;
	FUNC2(&dbgregs->reserved, 0, sizeof(dbgregs->reserved));
}