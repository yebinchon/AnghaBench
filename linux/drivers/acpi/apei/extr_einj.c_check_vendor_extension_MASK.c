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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct vendor_error_type_extension {int pcie_sbdf; int vendor_id; int device_id; int rev_id; } ;
struct set_error_type_with_address {int vendor_extension; } ;

/* Variables and functions */
 struct vendor_error_type_extension* FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vendor_error_type_extension*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  vendor_dev ; 

__attribute__((used)) static void FUNC3(u64 paddr,
				   struct set_error_type_with_address *v5param)
{
	int	offset = v5param->vendor_extension;
	struct	vendor_error_type_extension *v;
	u32	sbdf;

	if (!offset)
		return;
	v = FUNC0(paddr + offset, sizeof(*v));
	if (!v)
		return;
	sbdf = v->pcie_sbdf;
	FUNC2(vendor_dev, "%x:%x:%x.%x vendor_id=%x device_id=%x rev_id=%x\n",
		sbdf >> 24, (sbdf >> 16) & 0xff,
		(sbdf >> 11) & 0x1f, (sbdf >> 8) & 0x7,
		 v->vendor_id, v->device_id, v->rev_id);
	FUNC1(v, sizeof(*v));
}