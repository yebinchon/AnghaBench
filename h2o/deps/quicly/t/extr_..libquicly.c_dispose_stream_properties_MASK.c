#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  default_scheduler; int /*<<< orphan*/  control; } ;
struct TYPE_6__ {TYPE_1__ pending_link; int /*<<< orphan*/  max_stream_data_sender; } ;
struct TYPE_7__ {TYPE_2__ _send_aux; int /*<<< orphan*/  recvstate; int /*<<< orphan*/  sendstate; } ;
typedef  TYPE_3__ quicly_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(quicly_stream_t *stream)
{
    FUNC3(&stream->sendstate);
    FUNC2(&stream->recvstate);
    FUNC1(&stream->_send_aux.max_stream_data_sender);
    FUNC0(&stream->_send_aux.pending_link.control);
    FUNC0(&stream->_send_aux.pending_link.default_scheduler);
}