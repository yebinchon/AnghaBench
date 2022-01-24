#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cpuinfo_x86 {scalar_t__ x86_vendor; scalar_t__ cpuid_level; char* x86_vendor_id; int /*<<< orphan*/  x86_stepping; int /*<<< orphan*/  x86_model; int /*<<< orphan*/  x86; scalar_t__* x86_model_id; } ;
struct TYPE_2__ {char* c_vendor; } ;

/* Variables and functions */
 scalar_t__ X86_VENDOR_NUM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,char const*) ; 
 TYPE_1__* this_cpu ; 

void FUNC2(struct cpuinfo_x86 *c)
{
	const char *vendor = NULL;

	if (c->x86_vendor < X86_VENDOR_NUM) {
		vendor = this_cpu->c_vendor;
	} else {
		if (c->cpuid_level >= 0)
			vendor = c->x86_vendor_id;
	}

	if (vendor && !FUNC1(c->x86_model_id, vendor))
		FUNC0("%s ", vendor);

	if (c->x86_model_id[0])
		FUNC0("%s", c->x86_model_id);
	else
		FUNC0("%d86", c->x86);

	FUNC0(" (family: 0x%x, model: 0x%x", c->x86, c->x86_model);

	if (c->x86_stepping || c->cpuid_level >= 0)
		FUNC0(", stepping: 0x%x)\n", c->x86_stepping);
	else
		FUNC0(")\n");
}