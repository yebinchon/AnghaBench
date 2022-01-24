#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sum ;
struct TYPE_5__ {unsigned char* ipad; unsigned char* opad; } ;
typedef  TYPE_1__ md5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,int) ; 

void FUNC4( md5_context *ctx, unsigned char *key, int keylen )
{
    int i;
    unsigned char sum[16];

    if( keylen > 64 )
    {
        FUNC0( key, keylen, sum );
        keylen = 16;
        key = sum;
    }

    FUNC3( ctx->ipad, 0x36, 64 );
    FUNC3( ctx->opad, 0x5C, 64 );

    for( i = 0; i < keylen; i++ )
    {
        ctx->ipad[i] = (unsigned char)( ctx->ipad[i] ^ key[i] );
        ctx->opad[i] = (unsigned char)( ctx->opad[i] ^ key[i] );
    }

    FUNC1( ctx );
    FUNC2( ctx, ctx->ipad, 64 );

    FUNC3( sum, 0, sizeof( sum ) );
}