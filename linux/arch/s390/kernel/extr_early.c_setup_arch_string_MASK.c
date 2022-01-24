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
struct sysinfo_3_2_2 {char* manufacturer; char* type; char* model; char* model_capacity; TYPE_1__* vm; scalar_t__ count; } ;
struct sysinfo_1_1_1 {char* manufacturer; char* type; char* model; char* model_capacity; TYPE_1__* vm; scalar_t__ count; } ;
struct TYPE_2__ {char* cpi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ MACHINE_IS_KVM ; 
 scalar_t__ MACHINE_IS_LPAR ; 
 scalar_t__ MACHINE_IS_VM ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct sysinfo_3_2_2*,int,int,int) ; 
 int /*<<< orphan*/  sysinfo_page ; 

void FUNC5(void)
{
	struct sysinfo_1_1_1 *mach = (struct sysinfo_1_1_1 *)&sysinfo_page;
	struct sysinfo_3_2_2 *vm = (struct sysinfo_3_2_2 *)&sysinfo_page;
	char mstr[80], hvstr[17];

	if (FUNC4(mach, 1, 1, 1))
		return;
	FUNC0(mach->manufacturer, sizeof(mach->manufacturer));
	FUNC0(mach->type, sizeof(mach->type));
	FUNC0(mach->model, sizeof(mach->model));
	FUNC0(mach->model_capacity, sizeof(mach->model_capacity));
	FUNC2(mstr, "%-16.16s %-4.4s %-16.16s %-16.16s",
		mach->manufacturer, mach->type,
		mach->model, mach->model_capacity);
	FUNC3(mstr);
	if (FUNC4(vm, 3, 2, 2) == 0 && vm->count) {
		FUNC0(vm->vm[0].cpi, sizeof(vm->vm[0].cpi));
		FUNC2(hvstr, "%-16.16s", vm->vm[0].cpi);
		FUNC3(hvstr);
	} else {
		FUNC2(hvstr, "%s",
			MACHINE_IS_LPAR ? "LPAR" :
			MACHINE_IS_VM ? "z/VM" :
			MACHINE_IS_KVM ? "KVM" : "unknown");
	}
	FUNC1("%s (%s)", mstr, hvstr);
}