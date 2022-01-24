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
typedef  int /*<<< orphan*/  nvram_handle_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13( int argc, const char *argv[] )
{
	nvram_handle_t *nvram;
	int commit = 0;
	int write = 0;
	int stat = 1;
	int done = 0;
	int i;

	if( argc < 2 ) {
		FUNC12();
		return 1;
	}

	/* Ugly... iterate over arguments to see whether we can expect a write */
	if( ( !FUNC11(argv[1], "set")  && 2 < argc ) ||
		( !FUNC11(argv[1], "unset") && 2 < argc ) ||
		!FUNC11(argv[1], "commit") )
		write = 1;


	nvram = write ? FUNC9() : FUNC8();

	if( nvram != NULL && argc > 1 )
	{
		for( i = 1; i < argc; i++ )
		{
			if( !FUNC11(argv[i], "show") )
			{
				stat = FUNC3(nvram);
				done++;
			}
			else if( !FUNC11(argv[i], "info") )
			{
				stat = FUNC1(nvram);
				done++;
			}
			else if( !FUNC11(argv[i], "get") || !FUNC11(argv[i], "unset") || !FUNC11(argv[i], "set") )
			{
				if( (i+1) < argc )
				{
					switch(argv[i++][0])
					{
						case 'g':
							stat = FUNC0(nvram, argv[i]);
							break;

						case 'u':
							stat = FUNC4(nvram, argv[i]);
							break;

						case 's':
							stat = FUNC2(nvram, argv[i]);
							break;
					}
					done++;
				}
				else
				{
					FUNC5(stderr, "Command '%s' requires an argument!\n", argv[i]);
					done = 0;
					break;
				}
			}
			else if( !FUNC11(argv[i], "commit") )
			{
				commit = 1;
				done++;
			}
			else
			{
				FUNC5(stderr, "Unknown option '%s' !\n", argv[i]);
				done = 0;
				break;
			}
		}

		if( write )
			stat = FUNC7(nvram);

		FUNC6(nvram);

		if( commit )
			stat = FUNC10();
	}

	if( !nvram )
	{
		FUNC5(stderr,
			"Could not open nvram! Possible reasons are:\n"
			"	- No device found (/proc not mounted or no nvram present)\n"
			"	- Insufficient permissions to open mtd device\n"
			"	- Insufficient memory to complete operation\n"
			"	- Memory mapping failed or not supported\n"
			"	- Nvram magic not found in specific nvram partition\n"
		);

		stat = 1;
	}
	else if( !done )
	{
		FUNC12();
		stat = 1;
	}

	return stat;
}