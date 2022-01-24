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
struct TYPE_4__ {scalar_t__ off; scalar_t__ base; } ;
typedef  TYPE_1__ ptls_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,void const*,size_t) ; 
 int FUNC1 (TYPE_1__*,size_t) ; 

int FUNC2(ptls_buffer_t *buf, const void *src, size_t len)
{
    int ret;

    if (len == 0)
        return 0;
    if ((ret = FUNC1(buf, len)) != 0)
        return ret;
    FUNC0(buf->base + buf->off, src, len);
    buf->off += len;
    return 0;
}