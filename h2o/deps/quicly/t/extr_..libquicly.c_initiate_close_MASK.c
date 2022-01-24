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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_7__ {char const* reason_phrase; int /*<<< orphan*/  frame_type; scalar_t__ error_code; } ;
struct TYPE_8__ {TYPE_1__ connection_close; } ;
struct TYPE_9__ {scalar_t__ state; } ;
struct TYPE_10__ {TYPE_2__ egress; TYPE_3__ super; } ;
typedef  TYPE_4__ quicly_conn_t ;

/* Variables and functions */
 scalar_t__ PTLS_ERROR_CLASS_SELF_ALERT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ QUICLY_STATE_CLOSING ; 
 int QUICLY_TRANSPORT_ERROR_INTERNAL ; 
 scalar_t__ QUICLY_TRANSPORT_ERROR_TLS_ALERT_BASE ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int FUNC5 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(quicly_conn_t *conn, int err, uint64_t frame_type, const char *reason_phrase)
{
    uint16_t quic_error_code;

    if (conn->super.state >= QUICLY_STATE_CLOSING)
        return 0;

    if (reason_phrase == NULL)
        reason_phrase = "";

    /* convert error code to QUIC error codes */
    if (FUNC4(err)) {
        quic_error_code = FUNC2(err);
    } else if (FUNC3(err)) {
        quic_error_code = FUNC2(err);
        frame_type = UINT64_MAX;
    } else if (FUNC0(err) == PTLS_ERROR_CLASS_SELF_ALERT) {
        quic_error_code = QUICLY_TRANSPORT_ERROR_TLS_ALERT_BASE + FUNC1(err);
    } else {
        quic_error_code = FUNC2(QUICLY_TRANSPORT_ERROR_INTERNAL);
        frame_type = UINT64_MAX;
    }

    conn->egress.connection_close.error_code = quic_error_code;
    conn->egress.connection_close.frame_type = frame_type;
    conn->egress.connection_close.reason_phrase = reason_phrase;
    return FUNC5(conn, 1, 0);
}