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
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(quicly_stream_t *stream, int err)
{
    quicly_streambuf_t *sbuf = stream->data;

    FUNC2(&sbuf->egress);
    FUNC1(&sbuf->ingress);
    FUNC0(sbuf);
    stream->data = NULL;
}