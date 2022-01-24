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
 int /*<<< orphan*/  SECONDARY_EXEC_ENABLE_EPT ; 
 int FUNC0 (struct vmcs12*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct vmcs12 *vmcs12)
{
	return FUNC0(vmcs12, SECONDARY_EXEC_ENABLE_EPT);
}