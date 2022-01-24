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
struct vmcs12 {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  CPU_BASED_VIRTUAL_NMI_PENDING ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct vmcs12*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmcs12*) ; 
 scalar_t__ FUNC3 (struct vmcs12*) ; 

__attribute__((used)) static int FUNC4(struct vmcs12 *vmcs12)
{
	if (FUNC0(!FUNC2(vmcs12) &&
	       FUNC3(vmcs12)))
		return -EINVAL;

	if (FUNC0(!FUNC3(vmcs12) &&
	       FUNC1(vmcs12, CPU_BASED_VIRTUAL_NMI_PENDING)))
		return -EINVAL;

	return 0;
}