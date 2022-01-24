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
struct salinfo_data_saved {unsigned int cpu; int /*<<< orphan*/  cpu_event; scalar_t__ buffer; struct salinfo_data_saved* data_saved; } ;
struct salinfo_data {unsigned int cpu; int /*<<< orphan*/  cpu_event; scalar_t__ buffer; struct salinfo_data* data_saved; } ;

/* Variables and functions */
 int FUNC0 (struct salinfo_data_saved*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  data_saved_lock ; 
 struct salinfo_data_saved* salinfo_data ; 
 int /*<<< orphan*/  FUNC2 (struct salinfo_data_saved*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu)
{
	unsigned int i, end = FUNC0(salinfo_data);
	struct salinfo_data *data;

	FUNC3(&data_saved_lock);
	for (i = 0, data = salinfo_data; i < end; ++i, ++data) {
		struct salinfo_data_saved *data_saved;
		int j = FUNC0(data->data_saved) - 1;

		for (data_saved = data->data_saved + j; j >= 0;
		     --j, --data_saved) {
			if (data_saved->buffer && data_saved->cpu == cpu)
				FUNC2(data, j);
		}
		FUNC1(cpu, &data->cpu_event);
	}
	FUNC4(&data_saved_lock);
	return 0;
}