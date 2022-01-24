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
typedef  int /*<<< orphan*/  fileHandle_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QKEY_FILE ; 
 int QKEY_SIZE ; 

__attribute__((used)) static void FUNC4( const char *prefix, int prefix_len )
{
	fileHandle_t f;
	int len;

	len = FUNC3( QKEY_FILE, &f );
	FUNC2( f );

	if( len != QKEY_SIZE ) 
		FUNC1( "cl_guid", "" );
	else
		FUNC1( "cl_guid", FUNC0( QKEY_FILE, QKEY_SIZE,
			prefix, prefix_len ) );
}