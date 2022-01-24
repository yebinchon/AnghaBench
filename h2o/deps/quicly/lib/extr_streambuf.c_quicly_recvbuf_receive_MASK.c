#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  quicly_stream_t ;
struct TYPE_4__ {size_t off; scalar_t__ base; } ;
typedef  TYPE_1__ ptls_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,void const*,size_t) ; 
 int FUNC1 (TYPE_1__*,size_t) ; 

int FUNC2(quicly_stream_t *stream, ptls_buffer_t *rb, size_t off, const void *src, size_t len)
{
    if (len != 0) {
        int ret;
        if ((ret = FUNC1(rb, off + len - rb->off)) != 0)
            return ret;
        FUNC0(rb->base + off, src, len);
        if (rb->off < off + len)
            rb->off = off + len;
    }
    return 0;
}