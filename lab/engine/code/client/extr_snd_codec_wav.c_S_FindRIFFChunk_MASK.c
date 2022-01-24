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
 int /*<<< orphan*/  FS_SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4( fileHandle_t f, char *chunk ) {
	char	name[5];
	int		len;

	while( ( len = FUNC3(f, name) ) >= 0 )
	{
		// If this is the right chunk, return
		if( !FUNC2( name, chunk, 4 ) )
			return len;

		len = FUNC1( len, 2 );

		// Not the right chunk - skip it
		FUNC0( f, len, FS_SEEK_CUR );
	}

	return -1;
}