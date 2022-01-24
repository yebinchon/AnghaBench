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
struct TYPE_4__ {int* total; unsigned char* buffer; } ;
typedef  TYPE_1__ md5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 

void FUNC2( md5_context *ctx, unsigned char *input, int ilen )
{
    int fill;
    unsigned long left;

    if( ilen <= 0 )
        return;

    left = ctx->total[0] & 0x3F;
    fill = 64 - left;

    ctx->total[0] += ilen;
    ctx->total[0] &= 0xFFFFFFFF;

    if( ctx->total[0] < (unsigned long) ilen )
        ctx->total[1]++;

    if( left && ilen >= fill )
    {
        FUNC1( (void *) (ctx->buffer + left),
                (void *) input, fill );
        FUNC0( ctx, ctx->buffer );
        input += fill;
        ilen  -= fill;
        left = 0;
    }

    while( ilen >= 64 )
    {
        FUNC0( ctx, input );
        input += 64;
        ilen  -= 64;
    }

    if( ilen > 0 )
    {
        FUNC1( (void *) (ctx->buffer + left),
                (void *) input, ilen );
    }
}