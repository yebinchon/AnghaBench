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
struct ucode_cpu_info {scalar_t__ valid; } ;
typedef  enum ucode_state { ____Placeholder_ucode_state } ucode_state ;
struct TYPE_4__ {int (* request_microcode_fw ) (int,int /*<<< orphan*/ *,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ SYSTEM_RUNNING ; 
 int UCODE_ERROR ; 
 int UCODE_NEW ; 
 int UCODE_NFOUND ; 
 int UCODE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_2__* microcode_ops ; 
 TYPE_1__* microcode_pdev ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ system_state ; 
 struct ucode_cpu_info* ucode_cpu_info ; 

__attribute__((used)) static enum ucode_state FUNC4(int cpu, bool refresh_fw)
{
	enum ucode_state ustate;
	struct ucode_cpu_info *uci = ucode_cpu_info + cpu;

	if (uci->valid)
		return UCODE_OK;

	if (FUNC1(cpu))
		return UCODE_ERROR;

	/* --dimm. Trigger a delayed update? */
	if (system_state != SYSTEM_RUNNING)
		return UCODE_NFOUND;

	ustate = microcode_ops->request_microcode_fw(cpu, &microcode_pdev->dev, refresh_fw);
	if (ustate == UCODE_NEW) {
		FUNC2("CPU%d updated upon init\n", cpu);
		FUNC0(cpu);
	}

	return ustate;
}