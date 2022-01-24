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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  CF_TEXT ; 
 unsigned int FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 
 scalar_t__ DR_YES ; 
 int /*<<< orphan*/  DT_YES_NO ; 
 scalar_t__ FUNC4 () ; 
 int GMEM_DDESHARE ; 
 int GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 

void FUNC12( const char *error )
{
	if( FUNC10( DT_YES_NO, FUNC11( "%s. Copy console log to clipboard?", error ),
			"Error" ) == DR_YES )
	{
		HGLOBAL memoryHandle;
		char *clipMemory;

		memoryHandle = FUNC5( GMEM_MOVEABLE|GMEM_DDESHARE, FUNC1( ) + 1 );
		clipMemory = (char *)FUNC6( memoryHandle );

		if( clipMemory )
		{
			char *p = clipMemory;
			char buffer[ 1024 ];
			unsigned int size;

			while( ( size = FUNC0( buffer, sizeof( buffer ) ) ) > 0 )
			{
				FUNC3( p, buffer, size );
				p += size;
			}

			*p = '\0';

			if( FUNC8( NULL ) && FUNC4( ) )
				FUNC9( CF_TEXT, memoryHandle );

			FUNC7( clipMemory );
			FUNC2( );
		}
	}
}