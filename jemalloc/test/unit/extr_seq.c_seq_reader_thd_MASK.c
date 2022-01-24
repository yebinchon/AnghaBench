#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ thd_data_t ;
struct TYPE_6__ {int* arr; } ;
typedef  TYPE_2__ data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC3(void *arg) {
	thd_data_t *thd_data = (thd_data_t *)arg;
	int iter = 0;
	data_t local_data;
	while (iter < 1000 * 1000 - 1) {
		bool success = FUNC2(&local_data, &thd_data->data);
		if (success) {
			FUNC1(&local_data);
			FUNC0(iter, local_data.arr[0],
			    "Seq read went back in time.");
			iter = local_data.arr[0];
		}
	}
	return NULL;
}