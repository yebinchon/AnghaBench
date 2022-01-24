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
struct TYPE_2__ {scalar_t__ pack_progress_calls; } ;
typedef  TYPE_1__ record_callbacks_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 

__attribute__((used)) static int FUNC1(
	int stage, unsigned int current, unsigned int total, void* payload)
{
	record_callbacks_data *data = (record_callbacks_data *) payload;
	FUNC0(stage); FUNC0(current); FUNC0(total);
	if (data->pack_progress_calls < 0)
		return data->pack_progress_calls;

	data->pack_progress_calls++;
	return 0;
}