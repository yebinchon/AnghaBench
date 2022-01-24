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
typedef  size_t uint_fast32_t ;
struct TYPE_4__ {size_t lo; void const* buffer; scalar_t__ hi; } ;
typedef  TYPE_1__ _picohash_md5_ctx_t ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void const*,void const*,size_t) ; 

inline void FUNC2(_picohash_md5_ctx_t *ctx, const void *data, size_t size)
{
    uint_fast32_t saved_lo;
    unsigned long used, free;

    saved_lo = ctx->lo;
    if ((ctx->lo = (saved_lo + size) & 0x1fffffff) < saved_lo)
        ctx->hi++;
    ctx->hi += size >> 29;

    used = saved_lo & 0x3f;

    if (used) {
        free = 64 - used;

        if (size < free) {
            FUNC1(&ctx->buffer[used], data, size);
            return;
        }

        FUNC1(&ctx->buffer[used], data, free);
        data = (const unsigned char *)data + free;
        size -= free;
        FUNC0(ctx, ctx->buffer, 64);
    }

    if (size >= 64) {
        data = FUNC0(ctx, data, size & ~(unsigned long)0x3f);
        size &= 0x3f;
    }

    FUNC1(ctx->buffer, data, size);
}