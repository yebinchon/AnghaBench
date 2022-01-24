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
struct least_conn_t {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  h2o_balancer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct least_conn_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(h2o_balancer_t *_self)
{
    struct least_conn_t *self = (void *)_self;
    FUNC1(&self->mutex);
    FUNC0(self);
}