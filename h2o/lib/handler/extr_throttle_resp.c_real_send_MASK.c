#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t size; TYPE_5__* entries; } ;
struct TYPE_7__ {int /*<<< orphan*/  stream_state; TYPE_1__ bufs; } ;
struct TYPE_8__ {scalar_t__ tokens; int /*<<< orphan*/  timeout_entry; TYPE_2__ state; int /*<<< orphan*/  req; int /*<<< orphan*/  super; } ;
typedef  TYPE_3__ throttle_resp_t ;
struct TYPE_9__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(throttle_resp_t *self)
{
    /* a really simple token bucket implementation */
    FUNC0(self->tokens > 0);
    size_t i, token_consume;

    token_consume = 0;

    for (i = 0; i < self->state.bufs.size; i++) {
        token_consume += self->state.bufs.entries[i].len;
    }

    self->tokens -= token_consume;

    FUNC1(&self->super, self->req, self->state.bufs.entries, self->state.bufs.size, self->state.stream_state);
    if (!FUNC2(self->state.stream_state))
        FUNC3(&self->timeout_entry);
}