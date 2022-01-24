#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_3__ {int ept_caps; int vpid_caps; } ;
struct TYPE_4__ {TYPE_1__ msrs; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int,unsigned long long) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct vcpu_vmx *vmx, u64 data)
{
	u64 vmx_ept_vpid_cap;

	vmx_ept_vpid_cap = FUNC1(vmx->nested.msrs.ept_caps,
					   vmx->nested.msrs.vpid_caps);

	/* Every bit is either reserved or a feature bit. */
	if (!FUNC0(vmx_ept_vpid_cap, data, -1ULL))
		return -EINVAL;

	vmx->nested.msrs.ept_caps = data;
	vmx->nested.msrs.vpid_caps = data >> 32;
	return 0;
}