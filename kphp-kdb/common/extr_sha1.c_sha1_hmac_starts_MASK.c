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
typedef  TYPE_1__ sha1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned char*,int) ; 

void FUNC4( sha1_context *ctx, unsigned char *key, int keylen )
{
    int i;
    unsigned char sum[20];

    if( keylen > 64 )
    {
        FUNC1( key, keylen, sum );
        keylen = 20;
        key = sum;
    }

    FUNC0( ctx->ipad, 0x36, 64 );
    FUNC0( ctx->opad, 0x5C, 64 );

    for( i = 0; i < keylen; i++ )
    {
        ctx->ipad[i] = (unsigned char)( ctx->ipad[i] ^ key[i] );
        ctx->opad[i] = (unsigned char)( ctx->opad[i] ^ key[i] );
    }

    FUNC2( ctx );
    FUNC3( ctx, ctx->ipad, 64 );

    FUNC0( sum, 0, sizeof( sum ) );
}