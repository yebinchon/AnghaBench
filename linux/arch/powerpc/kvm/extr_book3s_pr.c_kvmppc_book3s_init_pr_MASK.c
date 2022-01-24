#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 TYPE_1__ kvm_ops_pr ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 TYPE_1__* kvmppc_pr_ops ; 

int FUNC2(void)
{
	int r;

	r = FUNC0();
	if (r < 0)
		return r;

	kvm_ops_pr.owner = THIS_MODULE;
	kvmppc_pr_ops = &kvm_ops_pr;

	r = FUNC1();
	return r;
}