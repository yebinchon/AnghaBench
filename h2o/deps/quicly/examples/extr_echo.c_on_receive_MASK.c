#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  conn; int /*<<< orphan*/  recvstate; int /*<<< orphan*/  sendstate; } ;
typedef  TYPE_1__ quicly_stream_t ;
struct TYPE_11__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ ptls_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC11(quicly_stream_t *stream, size_t off, const void *src, size_t len)
{
    int ret;

    /* read input to receive buffer */
    if ((ret = FUNC9(stream, off, src, len)) != 0)
        return ret;

    /* obtain contiguous bytes from the receive buffer */
    ptls_iovec_t input = FUNC8(stream);

    if (FUNC2()) {
        /* server: echo back to the client */
        if (FUNC5(&stream->sendstate)) {
            FUNC7(stream, input.base, input.len);
            /* shutdown the stream after echoing all data */
            if (FUNC4(&stream->recvstate))
                FUNC6(stream);
        }
    } else {
        /* client: print to stdout */
        FUNC1(input.base, 1, input.len, stdout);
        FUNC0(stdout);
        /* initiate connection close after receiving all data */
        if (FUNC4(&stream->recvstate))
            FUNC3(stream->conn, 0, "");
    }

    /* remove used bytes from receive buffer */
    FUNC10(stream, input.len);

    return 0;
}