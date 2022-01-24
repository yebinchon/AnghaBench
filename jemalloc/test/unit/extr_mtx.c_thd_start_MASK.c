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
struct TYPE_2__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ thd_start_arg_t ;

/* Variables and functions */
 unsigned int NINCRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC2(void *varg) {
	thd_start_arg_t *arg = (thd_start_arg_t *)varg;
	unsigned i;

	for (i = 0; i < NINCRS; i++) {
		FUNC0(&arg->mtx);
		arg->x++;
		FUNC1(&arg->mtx);
	}
	return NULL;
}