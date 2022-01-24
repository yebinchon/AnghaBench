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
struct kvmppc_vcpu_e500 {int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int MAS5_SGS ; 
 int /*<<< orphan*/  SPRN_MAS5 ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(struct kvmppc_vcpu_e500 *vcpu_e500)
{
	unsigned long flags;

	FUNC2(flags);
	FUNC3(SPRN_MAS5, MAS5_SGS | FUNC0(&vcpu_e500->vcpu));
	asm volatile("tlbilxlpid");
	FUNC3(SPRN_MAS5, 0);
	FUNC1(flags);
}