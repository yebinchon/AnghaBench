#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_13__ {int hflags; int nmi_injected; } ;
struct TYPE_16__ {TYPE_1__ arch; } ;
struct vcpu_svm {unsigned int int3_injected; scalar_t__ nmi_iret_rip; TYPE_4__ vcpu; TYPE_3__* vmcb; int /*<<< orphan*/  int3_rip; } ;
struct TYPE_14__ {int exit_int_info; int exit_int_info_err; } ;
struct TYPE_15__ {TYPE_2__ control; } ;

/* Variables and functions */
 int BP_VECTOR ; 
 int HF_IRET_MASK ; 
 int HF_NMI_MASK ; 
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
#define  SVM_EXITINTINFO_TYPE_EXEPT 130 
#define  SVM_EXITINTINFO_TYPE_INTR 129 
 int SVM_EXITINTINFO_TYPE_MASK ; 
#define  SVM_EXITINTINFO_TYPE_NMI 128 
 int SVM_EXITINTINFO_VALID ; 
 int SVM_EXITINTINFO_VALID_ERR ; 
 int SVM_EXITINTINFO_VEC_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,int) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct vcpu_svm *svm)
{
	u8 vector;
	int type;
	u32 exitintinfo = svm->vmcb->control.exit_int_info;
	unsigned int3_injected = svm->int3_injected;

	svm->int3_injected = 0;

	/*
	 * If we've made progress since setting HF_IRET_MASK, we've
	 * executed an IRET and can allow NMI injection.
	 */
	if ((svm->vcpu.arch.hflags & HF_IRET_MASK)
	    && FUNC8(&svm->vcpu) != svm->nmi_iret_rip) {
		svm->vcpu.arch.hflags &= ~(HF_NMI_MASK | HF_IRET_MASK);
		FUNC4(KVM_REQ_EVENT, &svm->vcpu);
	}

	svm->vcpu.arch.nmi_injected = false;
	FUNC0(&svm->vcpu);
	FUNC1(&svm->vcpu);

	if (!(exitintinfo & SVM_EXITINTINFO_VALID))
		return;

	FUNC4(KVM_REQ_EVENT, &svm->vcpu);

	vector = exitintinfo & SVM_EXITINTINFO_VEC_MASK;
	type = exitintinfo & SVM_EXITINTINFO_TYPE_MASK;

	switch (type) {
	case SVM_EXITINTINFO_TYPE_NMI:
		svm->vcpu.arch.nmi_injected = true;
		break;
	case SVM_EXITINTINFO_TYPE_EXEPT:
		/*
		 * In case of software exceptions, do not reinject the vector,
		 * but re-execute the instruction instead. Rewind RIP first
		 * if we emulated INT3 before.
		 */
		if (FUNC2(vector)) {
			if (vector == BP_VECTOR && int3_injected &&
			    FUNC3(&svm->vcpu, svm->int3_rip))
				FUNC9(&svm->vcpu,
					      FUNC8(&svm->vcpu) -
					      int3_injected);
			break;
		}
		if (exitintinfo & SVM_EXITINTINFO_VALID_ERR) {
			u32 err = svm->vmcb->control.exit_int_info_err;
			FUNC7(&svm->vcpu, vector, err);

		} else
			FUNC6(&svm->vcpu, vector);
		break;
	case SVM_EXITINTINFO_TYPE_INTR:
		FUNC5(&svm->vcpu, vector, false);
		break;
	default:
		break;
	}
}