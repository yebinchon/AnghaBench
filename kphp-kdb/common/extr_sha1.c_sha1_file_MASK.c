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
typedef  int /*<<< orphan*/  sha1_context ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 size_t FUNC3 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,int) ; 

int FUNC8( char *path, unsigned char output[20] )
{
    FILE *f;
    size_t n;
    sha1_context ctx;
    unsigned char buf[1024];

    if( ( f = FUNC2( path, "rb" ) ) == NULL )
        return( 1 );

    FUNC6( &ctx );

    while( ( n = FUNC3( buf, 1, sizeof( buf ), f ) ) > 0 )
        FUNC7( &ctx, buf, (int) n );

    FUNC5( &ctx, output );

    FUNC4( &ctx, 0, sizeof( sha1_context ) );

    if( FUNC1( f ) != 0 )
    {
        FUNC0( f );
        return( 2 );
    }

    FUNC0( f );
    return( 0 );
}