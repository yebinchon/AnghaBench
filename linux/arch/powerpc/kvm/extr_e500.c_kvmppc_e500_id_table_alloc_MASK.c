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
struct kvmppc_vcpu_e500 {void* idt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC1(struct kvmppc_vcpu_e500 *vcpu_e500)
{
	vcpu_e500->idt = FUNC0(sizeof(struct vcpu_id_table), GFP_KERNEL);
	return vcpu_e500->idt;
}