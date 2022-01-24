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
struct pit_data {int cnt; int cycle; int /*<<< orphan*/  base; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PIT_MR ; 
 int AT91_PIT_PITEN ; 
 int AT91_PIT_PITIEN ; 
 int /*<<< orphan*/  AT91_PIT_PIVR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct pit_data* FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *dev)
{
	struct pit_data *data = FUNC1(dev);

	/* update clocksource counter */
	data->cnt += data->cycle * FUNC0(FUNC2(data->base, AT91_PIT_PIVR));
	FUNC3(data->base, AT91_PIT_MR,
		  (data->cycle - 1) | AT91_PIT_PITEN | AT91_PIT_PITIEN);
	return 0;
}