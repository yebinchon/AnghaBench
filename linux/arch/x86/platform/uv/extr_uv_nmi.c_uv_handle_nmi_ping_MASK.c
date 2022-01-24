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
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pinging; int /*<<< orphan*/  pings; int /*<<< orphan*/  queries; } ;

/* Variables and functions */
 int NMI_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ uv_cpu_nmi ; 
 int FUNC4 (unsigned int,struct pt_regs*) ; 
 int /*<<< orphan*/  uv_nmi_ping_count ; 
 int /*<<< orphan*/  uv_nmi_ping_misses ; 

__attribute__((used)) static int FUNC5(unsigned int reason, struct pt_regs *regs)
{
	int ret;

	FUNC1(uv_cpu_nmi.queries);
	if (!FUNC2(uv_cpu_nmi.pinging)) {
		FUNC0(&uv_nmi_ping_misses);
		return NMI_DONE;
	}

	FUNC1(uv_cpu_nmi.pings);
	FUNC0(&uv_nmi_ping_count);
	ret = FUNC4(reason, regs);
	FUNC3(uv_cpu_nmi.pinging, 0);
	return ret;
}