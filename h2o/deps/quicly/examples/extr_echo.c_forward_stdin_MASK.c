#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sendstate; } ;
typedef  TYPE_1__ quicly_stream_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(quicly_conn_t *conn)
{
    quicly_stream_t *stream0;
    char buf[4096];
    size_t rret;

    if ((stream0 = FUNC0(conn, 0)) == NULL || !FUNC1(&stream0->sendstate))
        return 0;

    while ((rret = FUNC4(0, buf, sizeof(buf))) == -1 && errno == EINTR)
        ;
    if (rret == 0) {
        /* stdin closed, close the send-side of stream0 */
        FUNC2(stream0);
        return 0;
    } else {
        /* write data to send buffer */
        FUNC3(stream0, buf, rret);
        return 1;
    }
}