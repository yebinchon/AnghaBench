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
typedef  void* ssize_t ;
struct TYPE_3__ {void* _capacity; void* _cur; int /*<<< orphan*/  _cond; int /*<<< orphan*/  _mutex; } ;
typedef  TYPE_1__ h2o_sem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(h2o_sem_t *sem, ssize_t capacity)
{
    FUNC1(&sem->_mutex, NULL);
    FUNC0(&sem->_cond, NULL);
    sem->_cur = capacity;
    sem->_capacity = capacity;
}