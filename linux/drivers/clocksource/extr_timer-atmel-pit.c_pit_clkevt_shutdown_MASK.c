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
struct pit_data {int cycle; int /*<<< orphan*/  base; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PIT_MR ; 
 int AT91_PIT_PITEN ; 
 struct pit_data* FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct clock_event_device *dev)
{
	struct pit_data *data = FUNC0(dev);

	/* disable irq, leaving the clocksource active */
	FUNC1(data->base, AT91_PIT_MR, (data->cycle - 1) | AT91_PIT_PITEN);
	return 0;
}