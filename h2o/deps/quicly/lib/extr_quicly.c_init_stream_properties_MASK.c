#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  window; } ;
struct TYPE_10__ {int /*<<< orphan*/  default_scheduler; int /*<<< orphan*/  control; } ;
struct TYPE_9__ {scalar_t__ error_code; void* sender_state; } ;
struct TYPE_8__ {scalar_t__ error_code; void* sender_state; } ;
struct TYPE_11__ {TYPE_3__ pending_link; int /*<<< orphan*/  max_stream_data_sender; TYPE_2__ rst; TYPE_1__ stop_sending; int /*<<< orphan*/  max_stream_data; } ;
struct TYPE_13__ {TYPE_5__ _recv_aux; TYPE_4__ _send_aux; scalar_t__ streams_blocked; int /*<<< orphan*/  recvstate; int /*<<< orphan*/  stream_id; int /*<<< orphan*/  sendstate; int /*<<< orphan*/  conn; } ;
typedef  TYPE_6__ quicly_stream_t ;

/* Variables and functions */
 void* QUICLY_SENDER_STATE_NONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(quicly_stream_t *stream, uint32_t initial_max_stream_data_local,
                                   uint64_t initial_max_stream_data_remote)
{
    int is_client = FUNC0(stream->conn);

    if (FUNC8(is_client, stream->stream_id)) {
        FUNC5(&stream->sendstate);
    } else {
        FUNC6(&stream->sendstate);
    }
    if (FUNC7(is_client, stream->stream_id)) {
        FUNC3(&stream->recvstate);
    } else {
        FUNC4(&stream->recvstate);
    }
    stream->streams_blocked = 0;

    stream->_send_aux.max_stream_data = initial_max_stream_data_remote;
    stream->_send_aux.stop_sending.sender_state = QUICLY_SENDER_STATE_NONE;
    stream->_send_aux.stop_sending.error_code = 0;
    stream->_send_aux.rst.sender_state = QUICLY_SENDER_STATE_NONE;
    stream->_send_aux.rst.error_code = 0;
    FUNC2(&stream->_send_aux.max_stream_data_sender, initial_max_stream_data_local);
    FUNC1(&stream->_send_aux.pending_link.control);
    FUNC1(&stream->_send_aux.pending_link.default_scheduler);

    stream->_recv_aux.window = initial_max_stream_data_local;
}