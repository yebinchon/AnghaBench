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
struct vcpu_svm {int dummy; } ;

/* Variables and functions */
 int NESTED_EXIT_DONE ; 
 int FUNC0 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_svm*) ; 

__attribute__((used)) static int FUNC2(struct vcpu_svm *svm)
{
	int vmexit;

	vmexit = FUNC0(svm);

	if (vmexit == NESTED_EXIT_DONE)
		FUNC1(svm);

	return vmexit;
}