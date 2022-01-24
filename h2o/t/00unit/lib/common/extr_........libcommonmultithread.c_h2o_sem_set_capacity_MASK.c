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
typedef  scalar_t__ ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  _mutex; int /*<<< orphan*/  _cond; scalar_t__ _capacity; int /*<<< orphan*/  _cur; } ;
typedef  TYPE_1__ h2o_sem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(h2o_sem_t *sem, ssize_t new_capacity)
{
    FUNC1(&sem->_mutex);
    sem->_cur += new_capacity - sem->_capacity;
    sem->_capacity = new_capacity;
    FUNC0(&sem->_cond);
    FUNC2(&sem->_mutex);
}