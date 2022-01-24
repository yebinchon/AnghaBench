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
struct TYPE_2__ {int /*<<< orphan*/  gmap; scalar_t__ sie_page2; int /*<<< orphan*/  dbf; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct kvm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm*) ; 

void FUNC11(struct kvm *kvm)
{
	FUNC4(kvm);
	FUNC10(kvm);
	FUNC1(kvm->arch.dbf);
	FUNC8(kvm);
	FUNC2((unsigned long)kvm->arch.sie_page2);
	if (!FUNC5(kvm))
		FUNC3(kvm->arch.gmap);
	FUNC7(kvm);
	FUNC6(kvm);
	FUNC9(kvm);
	FUNC0(3, "vm 0x%pK destroyed", kvm);
}