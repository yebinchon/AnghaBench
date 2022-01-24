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
struct vcpu_id_table {int dummy; } ;
struct kvmppc_vcpu_e500 {int /*<<< orphan*/  idt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvmppc_vcpu_e500*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct kvmppc_vcpu_e500 *vcpu_e500)
{
	FUNC1(vcpu_e500->idt, 0, sizeof(struct vcpu_id_table));

	/* Update shadow pid when mappings are changed */
	FUNC0(vcpu_e500);
}