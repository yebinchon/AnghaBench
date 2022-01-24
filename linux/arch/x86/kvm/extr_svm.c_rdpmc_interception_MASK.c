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
struct vcpu_svm {int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int FUNC0 (struct vcpu_svm*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nrips ; 

__attribute__((used)) static int FUNC3(struct vcpu_svm *svm)
{
	int err;

	if (!nrips)
		return FUNC0(svm);

	err = FUNC2(&svm->vcpu);
	return FUNC1(&svm->vcpu, err);
}