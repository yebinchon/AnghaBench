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
struct TYPE_3__ {scalar_t__ _cur; int /*<<< orphan*/  _mutex; int /*<<< orphan*/  _cond; } ;
typedef  TYPE_1__ h2o_sem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(h2o_sem_t *sem)
{
    FUNC1(&sem->_mutex);
    while (sem->_cur <= 0)
        FUNC0(&sem->_cond, &sem->_mutex);
    --sem->_cur;
    FUNC2(&sem->_mutex);
}