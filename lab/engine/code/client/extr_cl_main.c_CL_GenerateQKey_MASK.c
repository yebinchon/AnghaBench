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
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QKEY_FILE ; 
 int QKEY_SIZE ; 

__attribute__((used)) static void FUNC6(void)
{
	int len = 0;
	unsigned char buff[ QKEY_SIZE ];
	fileHandle_t f;

	len = FUNC3( QKEY_FILE, &f );
	FUNC2( f );
	if( len == QKEY_SIZE ) {
		FUNC0( "QKEY found.\n" );
		return;
	}
	else {
		if( len > 0 ) {
			FUNC0( "QKEY file size != %d, regenerating\n",
				QKEY_SIZE );
		}

		FUNC0( "QKEY building random string\n" );
		FUNC1( buff, sizeof(buff) );

		f = FUNC4( QKEY_FILE );
		if( !f ) {
			FUNC0( "QKEY could not open %s for write\n",
				QKEY_FILE );
			return;
		}
		FUNC5( buff, sizeof(buff), f );
		FUNC2( f );
		FUNC0( "QKEY generated\n" );
	}
}