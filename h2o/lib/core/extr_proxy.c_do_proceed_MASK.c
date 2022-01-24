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
struct rp_generator_t {TYPE_1__* client; int /*<<< orphan*/ * last_content_before_send; int /*<<< orphan*/  sending; } ;
typedef  int /*<<< orphan*/  h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_generator_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* update_window ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rp_generator_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(h2o_generator_t *generator, h2o_req_t *req)
{
    struct rp_generator_t *self = (void *)generator;

    FUNC1(&self->sending);
    FUNC0(self);
    if (self->last_content_before_send == NULL)
        self->client->update_window(self->client);
}