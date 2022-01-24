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
struct rp_generator_t {int /*<<< orphan*/  sending; int /*<<< orphan*/ * last_content_before_send; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rp_generator_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *_self)
{
    struct rp_generator_t *self = _self;
    FUNC0(self);

    if (self->last_content_before_send != NULL) {
        FUNC1(&self->last_content_before_send);
    }
    FUNC2(&self->sending);
}