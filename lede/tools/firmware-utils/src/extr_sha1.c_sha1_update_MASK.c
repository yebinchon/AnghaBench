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
typedef  int ulong ;
typedef  int uint ;
typedef  int /*<<< orphan*/  uchar ;
struct TYPE_4__ {int* total; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ sha1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC2( sha1_context *ctx, uchar *input, uint length )
{
    ulong left, fill;

    if( ! length ) return;

    left = ctx->total[0] & 0x3F;
    fill = 64 - left;

    ctx->total[0] += length;
    ctx->total[0] &= 0xFFFFFFFF;

    if( ctx->total[0] < length )
        ctx->total[1]++;

    if( left && length >= fill )
    {
        FUNC0( (void *) (ctx->buffer + left),
                (void *) input, fill );
        FUNC1( ctx, ctx->buffer );
        length -= fill;
        input  += fill;
        left = 0;
    }

    while( length >= 64 )
    {
        FUNC1( ctx, input );
        length -= 64;
        input  += 64;
    }

    if( length )
    {
        FUNC0( (void *) (ctx->buffer + left),
                (void *) input, length );
    }
}