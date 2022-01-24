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
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ thd_data_t ;
typedef  int /*<<< orphan*/  local_data ;
typedef  int /*<<< orphan*/  data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void *
FUNC3(void *arg) {
	thd_data_t *thd_data = (thd_data_t *)arg;
	data_t local_data;
	FUNC0(&local_data, 0, sizeof(local_data));
	for (int i = 0; i < 1000 * 1000; i++) {
		FUNC2(&local_data, i);
		FUNC1(&thd_data->data, &local_data);
	}
	return NULL;
}