#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {unsigned long cr2; } ;
struct TYPE_19__ {TYPE_3__ arch; } ;
struct vcpu_svm {TYPE_4__ vcpu; TYPE_2__* vmcb; } ;
struct TYPE_16__ {int exit_info_1; scalar_t__ exit_code; } ;
struct TYPE_17__ {TYPE_1__ control; } ;

/* Variables and functions */
 int CR_VALID ; 
 int SVM_EXITINFO_REG_MASK ; 
 scalar_t__ SVM_EXIT_CR0_SEL_WRITE ; 
 int SVM_EXIT_READ_CR0 ; 
 int SVM_EXIT_WRITE_CR0 ; 
 int /*<<< orphan*/  UD_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  X86_FEATURE_DECODEASSISTS ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_svm*,unsigned long) ; 
 int FUNC2 (struct vcpu_svm*) ; 
 int FUNC3 (TYPE_4__*,int) ; 
 unsigned long FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (TYPE_4__*) ; 
 unsigned long FUNC7 (TYPE_4__*) ; 
 unsigned long FUNC8 (TYPE_4__*) ; 
 unsigned long FUNC9 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int,unsigned long) ; 
 int FUNC11 (TYPE_4__*,unsigned long) ; 
 int FUNC12 (TYPE_4__*,unsigned long) ; 
 int FUNC13 (TYPE_4__*,unsigned long) ; 
 int FUNC14 (TYPE_4__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct vcpu_svm *svm)
{
	int reg, cr;
	unsigned long val;
	int err;

	if (!FUNC15(X86_FEATURE_DECODEASSISTS))
		return FUNC2(svm);

	if (FUNC16((svm->vmcb->control.exit_info_1 & CR_VALID) == 0))
		return FUNC2(svm);

	reg = svm->vmcb->control.exit_info_1 & SVM_EXITINFO_REG_MASK;
	if (svm->vmcb->control.exit_code == SVM_EXIT_CR0_SEL_WRITE)
		cr = SVM_EXIT_WRITE_CR0 - SVM_EXIT_READ_CR0;
	else
		cr = svm->vmcb->control.exit_code - SVM_EXIT_READ_CR0;

	err = 0;
	if (cr >= 16) { /* mov to cr */
		cr -= 16;
		val = FUNC9(&svm->vcpu, reg);
		switch (cr) {
		case 0:
			if (!FUNC1(svm, val))
				err = FUNC11(&svm->vcpu, val);
			else
				return 1;

			break;
		case 3:
			err = FUNC12(&svm->vcpu, val);
			break;
		case 4:
			err = FUNC13(&svm->vcpu, val);
			break;
		case 8:
			err = FUNC14(&svm->vcpu, val);
			break;
		default:
			FUNC0(1, "unhandled write to CR%d", cr);
			FUNC5(&svm->vcpu, UD_VECTOR);
			return 1;
		}
	} else { /* mov from cr */
		switch (cr) {
		case 0:
			val = FUNC6(&svm->vcpu);
			break;
		case 2:
			val = svm->vcpu.arch.cr2;
			break;
		case 3:
			val = FUNC7(&svm->vcpu);
			break;
		case 4:
			val = FUNC8(&svm->vcpu);
			break;
		case 8:
			val = FUNC4(&svm->vcpu);
			break;
		default:
			FUNC0(1, "unhandled read from CR%d", cr);
			FUNC5(&svm->vcpu, UD_VECTOR);
			return 1;
		}
		FUNC10(&svm->vcpu, reg, val);
	}
	return FUNC3(&svm->vcpu, err);
}