#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptls_t ;
typedef  int /*<<< orphan*/  ptls_handshake_properties_t ;
struct TYPE_7__ {size_t off; scalar_t__ base; } ;
typedef  TYPE_1__ ptls_buffer_t ;

/* Variables and functions */
 int PTLS_ERROR_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(ptls_t * tls, ptls_buffer_t * sendbuf, ptls_buffer_t * recvbuf, ptls_handshake_properties_t * ph_prop)
{
    size_t inlen = 0, roff = 0;
    int ret = 0;

    FUNC2(sendbuf, "", 0);

    /* Provide the data */
    while (roff < recvbuf->off && (ret == 0 || ret == PTLS_ERROR_IN_PROGRESS))
    {
        inlen = recvbuf->off - roff;
        ret = FUNC3(tls, sendbuf, recvbuf->base + roff, &inlen, ph_prop);
        roff += inlen;
    }

    if (roff < recvbuf->off)
    {
        // Could not consume all the data. This is bad.
        FUNC0(stderr, "Could only process %d bytes out of %d\n", (int) roff, (int) recvbuf->off);
    }
    FUNC1(recvbuf);

    return ret;
}