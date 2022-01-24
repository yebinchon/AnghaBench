#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmpbuf ;
struct TYPE_6__ {unsigned char* opad; } ;
typedef  TYPE_1__ md5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 

void FUNC4( md5_context *ctx, unsigned char output[16] )
{
    unsigned char tmpbuf[16];

    FUNC0( ctx, tmpbuf );
    FUNC1( ctx );
    FUNC2( ctx, ctx->opad, 64 );
    FUNC2( ctx, tmpbuf, 16 );
    FUNC0( ctx, output );

    FUNC3( tmpbuf, 0, sizeof( tmpbuf ) );
}