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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  uv_nmi_kexec_failed ; 

__attribute__((used)) static inline void FUNC2(int cpu, int master, struct pt_regs *regs)
{
	if (master)
		FUNC1("UV: NMI kdump: KEXEC not supported in this kernel\n");
	FUNC0(&uv_nmi_kexec_failed, 1);
}