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
typedef  scalar_t__ fileHandle_t ;
typedef  int /*<<< orphan*/  descPath ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int FUNC4 (char*,scalar_t__*) ; 
 int MAX_INSTALL_PATH ; 
 int /*<<< orphan*/  PATH_SEP ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 

void FUNC7( const char *modDir, char *description, int descriptionLen ) {
	fileHandle_t	descHandle;
	char			descPath[MAX_INSTALL_PATH];
	int				nDescLen;
	FILE			*file;

	FUNC1( descPath, sizeof ( descPath ), "%s%cdescription.txt", modDir, PATH_SEP );
	nDescLen = FUNC4( descPath, &descHandle );

	if ( nDescLen > 0 ) {
		file = FUNC3(descHandle);
		FUNC0( description, 0, descriptionLen );
		nDescLen = FUNC6(description, 1, descriptionLen, file);
		if (nDescLen >= 0) {
			description[nDescLen] = '\0';
		}
	} else {
		FUNC5( description, modDir, descriptionLen );
	}

	if ( descHandle ) {
		FUNC2( descHandle );
	}
}