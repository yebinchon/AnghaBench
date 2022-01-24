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
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  vcpu_id; } ;
struct vcpu_svm {TYPE_3__ vcpu; TYPE_1__* vmcb; } ;
struct TYPE_5__ {int exit_info_1; int exit_info_2; } ;
struct TYPE_4__ {TYPE_2__ control; } ;

/* Variables and functions */
 int AVIC_UNACCEL_ACCESS_OFFSET_MASK ; 
 int AVIC_UNACCEL_ACCESS_VECTOR_MASK ; 
 int AVIC_UNACCEL_ACCESS_WRITE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct vcpu_svm*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct vcpu_svm *svm)
{
	int ret = 0;
	u32 offset = svm->vmcb->control.exit_info_1 &
		     AVIC_UNACCEL_ACCESS_OFFSET_MASK;
	u32 vector = svm->vmcb->control.exit_info_2 &
		     AVIC_UNACCEL_ACCESS_VECTOR_MASK;
	bool write = (svm->vmcb->control.exit_info_1 >> 32) &
		     AVIC_UNACCEL_ACCESS_WRITE_MASK;
	bool trap = FUNC2(offset);

	FUNC4(svm->vcpu.vcpu_id, offset,
					    trap, write, vector);
	if (trap) {
		/* Handling Trap */
		FUNC0(!write, "svm: Handling trap read.\n");
		ret = FUNC1(svm);
	} else {
		/* Handling Fault */
		ret = FUNC3(&svm->vcpu, 0);
	}

	return ret;
}