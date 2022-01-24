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
typedef  int u32 ;
struct admhcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_control; } ;

/* Variables and functions */
 int ADMHC_HC_DMAE ; 
 int FUNC0 (struct admhcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct admhcd*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct admhcd*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct admhcd *ahcd)
{
	u32 t;

	t = FUNC0(ahcd, &ahcd->regs->host_control);
	if (!(t & ADMHC_HC_DMAE))
		return;

	t &= ~ADMHC_HC_DMAE;
	FUNC2(ahcd, t, &ahcd->regs->host_control);
	FUNC1(ahcd, "DMA disabled\n");
}