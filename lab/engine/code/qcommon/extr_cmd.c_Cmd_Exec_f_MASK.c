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
typedef  int qboolean ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (char*,void**) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 

void FUNC9( void ) {
	qboolean quiet;
	union {
		char	*c;
		void	*v;
	} f;
	char	filename[MAX_QPATH];

	quiet = !FUNC7(FUNC3(0), "execq");

	if (FUNC2 () != 2) {
		FUNC4 ("exec%s <filename> : execute a script file%s\n",
		            quiet ? "q" : "", quiet ? " without notification" : "");
		return;
	}

	FUNC8( filename, FUNC3(1), sizeof( filename ) );
	FUNC0( filename, sizeof( filename ), ".cfg" );
	FUNC6( filename, &f.v);
	if (!f.c) {
		FUNC4 ("couldn't exec %s\n", filename);
		return;
	}
	if (!quiet)
		FUNC4 ("execing %s\n", filename);
	
	FUNC1 (f.c);

	FUNC5 (f.v);
}