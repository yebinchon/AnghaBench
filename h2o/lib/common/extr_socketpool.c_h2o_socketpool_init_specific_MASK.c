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
typedef  int /*<<< orphan*/  h2o_socketpool_target_t ;
typedef  int /*<<< orphan*/  h2o_socketpool_t ;
typedef  int /*<<< orphan*/  h2o_balancer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 

void FUNC2(h2o_socketpool_t *pool, size_t capacity, h2o_socketpool_target_t **targets, size_t num_targets,
                                  h2o_balancer_t *balancer)
{
    if (balancer == NULL)
        balancer = FUNC1();
    FUNC0(pool, targets, num_targets, capacity, balancer);
}