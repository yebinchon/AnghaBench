#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t _count; size_t _out_of_wait; int /*<<< orphan*/  _cond; int /*<<< orphan*/  _mutex; } ;
typedef  TYPE_1__ h2o_barrier_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(h2o_barrier_t *barrier, size_t count)
{
    FUNC1(&barrier->_mutex, NULL);
    FUNC0(&barrier->_cond, NULL);
    barrier->_count = count;
    barrier->_out_of_wait = count;
}