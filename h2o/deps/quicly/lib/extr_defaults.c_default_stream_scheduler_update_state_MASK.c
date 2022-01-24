#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct st_quicly_default_scheduler_state_t {int dummy; } ;
struct _st_quicly_conn_public_t {struct st_quicly_default_scheduler_state_t _default_scheduler; } ;
struct TYPE_6__ {int /*<<< orphan*/  default_scheduler; } ;
struct TYPE_7__ {TYPE_1__ pending_link; int /*<<< orphan*/  max_stream_data; } ;
struct TYPE_8__ {TYPE_2__ _send_aux; scalar_t__ conn; int /*<<< orphan*/  sendstate; } ;
typedef  TYPE_3__ quicly_stream_t ;
typedef  int /*<<< orphan*/  quicly_stream_scheduler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_quicly_default_scheduler_state_t*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(quicly_stream_scheduler_t *self, quicly_stream_t *stream)
{
    struct st_quicly_default_scheduler_state_t *sched = &((struct _st_quicly_conn_public_t *)stream->conn)->_default_scheduler;

    if (FUNC4(&stream->sendstate, &stream->_send_aux.max_stream_data)) {
        /* activate if not */
        FUNC0(sched, stream, FUNC1(stream->conn));
    } else {
        /* disactivate if active */
        if (FUNC2(&stream->_send_aux.pending_link.default_scheduler))
            FUNC3(&stream->_send_aux.pending_link.default_scheduler);
    }

    return 0;
}