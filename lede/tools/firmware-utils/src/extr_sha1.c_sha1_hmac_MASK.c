#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint ;
typedef  int /*<<< orphan*/  uchar ;
typedef  int /*<<< orphan*/  sha1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC4( uchar *key, uint keylen, uchar *buf, uint buflen,
                uchar digest[20] )
{
    uint i;
    sha1_context ctx;
    uchar k_ipad[64];
    uchar k_opad[64];
    uchar tmpbuf[20];

    FUNC0( k_ipad, 0x36, 64 );
    FUNC0( k_opad, 0x5C, 64 );

    for( i = 0; i < keylen; i++ )
    {
        if( i >= 64 ) break;

        k_ipad[i] ^= key[i];
        k_opad[i] ^= key[i];
    }

    FUNC2( &ctx );
    FUNC3( &ctx, k_ipad, 64 );
    FUNC3( &ctx, buf, buflen );
    FUNC1( &ctx, tmpbuf );

    FUNC2( &ctx );
    FUNC3( &ctx, k_opad, 64 );
    FUNC3( &ctx, tmpbuf, 20 );
    FUNC1( &ctx, digest );

    FUNC0( k_ipad, 0, 64 );
    FUNC0( k_opad, 0, 64 );
    FUNC0( tmpbuf, 0, 20 );
    FUNC0( &ctx, 0, sizeof( sha1_context ) );
}