#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct st_quicly_conn_streamgroup_state_t {int dummy; } ;
typedef  int /*<<< orphan*/  quicly_stream_id_t ;
struct TYPE_8__ {struct st_quicly_conn_streamgroup_state_t bidi; struct st_quicly_conn_streamgroup_state_t uni; } ;
struct TYPE_7__ {struct st_quicly_conn_streamgroup_state_t bidi; struct st_quicly_conn_streamgroup_state_t uni; } ;
struct TYPE_9__ {TYPE_2__ peer; TYPE_1__ host; } ;
struct TYPE_10__ {TYPE_3__ super; } ;
typedef  TYPE_4__ quicly_conn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct st_quicly_conn_streamgroup_state_t *FUNC3(quicly_conn_t *conn, quicly_stream_id_t stream_id)
{
    if (FUNC0(conn) == FUNC1(stream_id)) {
        return FUNC2(stream_id) ? &conn->super.host.uni : &conn->super.host.bidi;
    } else {
        return FUNC2(stream_id) ? &conn->super.peer.uni : &conn->super.peer.bidi;
    }
}