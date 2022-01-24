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
struct kvmppc_vcpu_e500 {int dummy; } ;
typedef  int /*<<< orphan*/  gva_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvmppc_vcpu_e500*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvmppc_vcpu_e500*,int,int) ; 
 int FUNC2 (struct kvmppc_vcpu_e500*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct kvmppc_vcpu_e500 *vcpu_e500, int pid,
		       gva_t ea)
{
	int tlbsel, esel;

	for (tlbsel = 0; tlbsel < 2; tlbsel++) {
		esel = FUNC2(vcpu_e500, ea, tlbsel, pid, -1);
		if (esel >= 0) {
			FUNC0(vcpu_e500, tlbsel, esel);
			FUNC1(vcpu_e500, tlbsel, esel);
			break;
		}
	}
}