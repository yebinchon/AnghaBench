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
struct pit_data {int dummy; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pit_data*) ; 
 struct pit_data* FUNC1 (struct clock_event_device*) ; 

__attribute__((used)) static void FUNC2(struct clock_event_device *cedev)
{
	struct pit_data *data = FUNC1(cedev);

	FUNC0(data);
}