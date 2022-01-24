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
struct clock_event_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct clock_event_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twd_evt ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct clock_event_device *clk = FUNC1(twd_evt);

	FUNC2(clk);
	FUNC0(clk->irq);
}