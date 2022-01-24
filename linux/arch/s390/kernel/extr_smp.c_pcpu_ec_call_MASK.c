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
struct pcpu {int /*<<< orphan*/  ec_clk; int /*<<< orphan*/  ec_mask; } ;

/* Variables and functions */
 int SIGP_EMERGENCY_SIGNAL ; 
 int SIGP_EXTERNAL_CALL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct pcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcpu*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pcpu *pcpu, int ec_bit)
{
	int order;

	if (FUNC3(ec_bit, &pcpu->ec_mask))
		return;
	order = FUNC1(pcpu) ? SIGP_EXTERNAL_CALL : SIGP_EMERGENCY_SIGNAL;
	pcpu->ec_clk = FUNC0();
	FUNC2(pcpu, order, 0);
}