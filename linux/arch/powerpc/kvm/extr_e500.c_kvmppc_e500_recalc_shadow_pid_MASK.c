#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* shadow_pid1; void* shadow_pid; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;
struct kvmppc_vcpu_e500 {TYPE_2__ vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 void* FUNC3 (struct kvmppc_vcpu_e500*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct kvmppc_vcpu_e500 *vcpu_e500)
{
	FUNC4();
	vcpu_e500->vcpu.arch.shadow_pid = FUNC3(vcpu_e500,
			FUNC0(&vcpu_e500->vcpu),
			FUNC1(&vcpu_e500->vcpu),
			FUNC2(&vcpu_e500->vcpu), 1);
	vcpu_e500->vcpu.arch.shadow_pid1 = FUNC3(vcpu_e500,
			FUNC0(&vcpu_e500->vcpu), 0,
			FUNC2(&vcpu_e500->vcpu), 1);
	FUNC5();
}