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
typedef  TYPE_1__ sha1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned char*,int) ; 

void FUNC4( sha1_context *ctx, unsigned char output[20] )
{
    unsigned char tmpbuf[20];

    FUNC1( ctx, tmpbuf );
    FUNC2( ctx );
    FUNC3( ctx, ctx->opad, 64 );
    FUNC3( ctx, tmpbuf, 20 );
    FUNC1( ctx, output );

    FUNC0( tmpbuf, 0, sizeof( tmpbuf ) );
}