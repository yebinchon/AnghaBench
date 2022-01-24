#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t fileHandle_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_2__ {scalar_t__ handleSync; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fs_searchpaths ; 
 TYPE_1__* fsh ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

int FUNC5( const void *buffer, int len, fileHandle_t h ) {
	int		block, remaining;
	int		written;
	byte	*buf;
	int		tries;
	FILE	*f;

	if ( !fs_searchpaths ) {
		FUNC0( ERR_FATAL, "Filesystem call made without initialization" );
	}

	if ( !h ) {
		return 0;
	}

	f = FUNC2(h);
	buf = (byte *)buffer;

	remaining = len;
	tries = 0;
	while (remaining) {
		block = remaining;
		written = FUNC4 (buf, 1, block, f);
		if (written == 0) {
			if (!tries) {
				tries = 1;
			} else {
				FUNC1( "FS_Write: 0 bytes written\n" );
				return 0;
			}
		}

		if (written == -1) {
			FUNC1( "FS_Write: -1 bytes written\n" );
			return 0;
		}

		remaining -= written;
		buf += written;
	}
	if ( fsh[h].handleSync ) {
		FUNC3( f );
	}
	return len;
}