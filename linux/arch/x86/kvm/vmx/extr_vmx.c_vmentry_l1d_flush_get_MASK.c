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
struct kernel_param {int dummy; } ;
struct TYPE_3__ {char* option; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 size_t l1tf_vmx_mitigation ; 
 int FUNC2 (char*,char*,...) ; 
 TYPE_1__* vmentry_l1d_param ; 

__attribute__((used)) static int FUNC3(char *s, const struct kernel_param *kp)
{
	if (FUNC1(l1tf_vmx_mitigation >= FUNC0(vmentry_l1d_param)))
		return FUNC2(s, "???\n");

	return FUNC2(s, "%s\n", vmentry_l1d_param[l1tf_vmx_mitigation].option);
}