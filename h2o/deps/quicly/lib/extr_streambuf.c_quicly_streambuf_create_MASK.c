#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ingress; int /*<<< orphan*/  egress; } ;
typedef  TYPE_1__ quicly_streambuf_t ;
struct TYPE_6__ {TYPE_1__* data; } ;
typedef  TYPE_2__ quicly_stream_t ;

/* Variables and functions */
 int PTLS_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(quicly_stream_t *stream, size_t sz)
{
    quicly_streambuf_t *sbuf;

    FUNC0(sz >= sizeof(*sbuf));
    FUNC0(stream->data == NULL);

    if ((sbuf = FUNC1(sz)) == NULL)
        return PTLS_ERROR_NO_MEMORY;
    FUNC4(&sbuf->egress);
    FUNC3(&sbuf->ingress, "", 0);
    if (sz != sizeof(*sbuf))
        FUNC2((char *)sbuf + sizeof(*sbuf), 0, sz - sizeof(*sbuf));

    stream->data = sbuf;
    return 0;
}