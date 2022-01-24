#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int number_of_sets; } ;
union _cpuid4_leaf_ecx {TYPE_2__ split; int /*<<< orphan*/  full; } ;
struct TYPE_7__ {int coherency_line_size; int physical_line_partition; int ways_of_associativity; } ;
union _cpuid4_leaf_ebx {TYPE_3__ split; int /*<<< orphan*/  full; } ;
struct TYPE_5__ {scalar_t__ type; } ;
union _cpuid4_leaf_eax {TYPE_1__ split; int /*<<< orphan*/  full; } ;
struct _cpuid4_info_regs {int size; union _cpuid4_leaf_ecx ecx; union _cpuid4_leaf_ebx ebx; union _cpuid4_leaf_eax eax; } ;
struct TYPE_8__ {scalar_t__ x86_vendor; } ;

/* Variables and functions */
 scalar_t__ CTYPE_NULL ; 
 int EIO ; 
 int /*<<< orphan*/  X86_FEATURE_TOPOEXT ; 
 scalar_t__ X86_VENDOR_AMD ; 
 scalar_t__ X86_VENDOR_HYGON ; 
 int /*<<< orphan*/  FUNC0 (int,union _cpuid4_leaf_eax*,union _cpuid4_leaf_ebx*,union _cpuid4_leaf_ecx*) ; 
 int /*<<< orphan*/  FUNC1 (struct _cpuid4_info_regs*,int) ; 
 TYPE_4__ boot_cpu_data ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static int
FUNC4(int index, struct _cpuid4_info_regs *this_leaf)
{
	union _cpuid4_leaf_eax	eax;
	union _cpuid4_leaf_ebx	ebx;
	union _cpuid4_leaf_ecx	ecx;
	unsigned		edx;

	if (boot_cpu_data.x86_vendor == X86_VENDOR_AMD) {
		if (FUNC2(X86_FEATURE_TOPOEXT))
			FUNC3(0x8000001d, index, &eax.full,
				    &ebx.full, &ecx.full, &edx);
		else
			FUNC0(index, &eax, &ebx, &ecx);
		FUNC1(this_leaf, index);
	} else if (boot_cpu_data.x86_vendor == X86_VENDOR_HYGON) {
		FUNC3(0x8000001d, index, &eax.full,
			    &ebx.full, &ecx.full, &edx);
		FUNC1(this_leaf, index);
	} else {
		FUNC3(4, index, &eax.full, &ebx.full, &ecx.full, &edx);
	}

	if (eax.split.type == CTYPE_NULL)
		return -EIO; /* better error ? */

	this_leaf->eax = eax;
	this_leaf->ebx = ebx;
	this_leaf->ecx = ecx;
	this_leaf->size = (ecx.split.number_of_sets          + 1) *
			  (ebx.split.coherency_line_size     + 1) *
			  (ebx.split.physical_line_partition + 1) *
			  (ebx.split.ways_of_associativity   + 1);
	return 0;
}