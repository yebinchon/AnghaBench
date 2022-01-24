#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ symbol_t ;
struct TYPE_5__ {void* verbose; void* vanillaQ3Compatibility; void* writeMapFile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 double FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * asmFileNames ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int errorCount ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 size_t numAsmFiles ; 
 int /*<<< orphan*/  optable ; 
 TYPE_3__ options ; 
 int /*<<< orphan*/  outputFilename ; 
 void* qtrue ; 
 int /*<<< orphan*/  FUNC9 (char*,double) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* symbols ; 
 int /*<<< orphan*/  symtable ; 
 int /*<<< orphan*/  symtablelen ; 

int FUNC12( int argc, char **argv ) {
	int			i;
	double		start, end;

//	_chdir( "/quake3/jccode/cgame/lccout" );	// hack for vc profiler

	if ( argc < 2 ) {
		FUNC5( argv[0] );
	}

	start = FUNC2 ();

	// default filename is "q3asm"
	FUNC11( outputFilename, "q3asm" );
	numAsmFiles = 0;	

	for ( i = 1 ; i < argc ; i++ ) {
		if ( argv[i][0] != '-' ) {
			break;
		}
		if( !FUNC10( argv[ i ], "-h" ) || 
		    !FUNC10( argv[ i ], "--help" ) ||
		    !FUNC10( argv[ i ], "-?") ) {
			FUNC5( argv[0] );
		}

		if ( !FUNC10( argv[i], "-o" ) ) {
			if ( i == argc - 1 ) {
				FUNC1( "-o must precede a filename" );
			}
/* Timbo of Tremulous pointed out -o not working; stock ID q3asm folded in the change. Yay. */
			FUNC11( outputFilename, argv[ i+1 ] );
			i++;
			continue;
		}

		if ( !FUNC10( argv[i], "-f" ) ) {
			if ( i == argc - 1 ) {
				FUNC1( "-f must precede a filename" );
			}
			FUNC4( argv[ i+1 ] );
			i++;
			continue;
		}

		if (!FUNC10(argv[i], "-b")) {
			if (i == argc - 1) {
				FUNC1("-b requires an argument");
			}
			i++;
			symtablelen = FUNC6(argv[i]);
			continue;
		}

		if( !FUNC10( argv[ i ], "-v" ) ) {
/* Verbosity option added by Timbo, 2002.09.14.
By default (no -v option), q3asm remains silent except for critical errors.
Verbosity turns on all messages, error or not.
Motivation: not wanting to scrollback for pages to find asm error.
*/
			options.verbose = qtrue;
			continue;
		}

		if( !FUNC10( argv[ i ], "-m" ) ) {
			options.writeMapFile = qtrue;
			continue;
		}

		if( !FUNC10( argv[ i ], "-vq3" ) ) {
			options.vanillaQ3Compatibility = qtrue;
			continue;
		}

		FUNC1( "Unknown option: %s", argv[i] );
	}

	// the rest of the command line args are asm files
	for ( ; i < argc ; i++ ) {
		asmFileNames[ numAsmFiles ] = FUNC7( argv[ i ] );
		numAsmFiles++;
	}
	// In some case it Segfault without this check
	if ( numAsmFiles == 0 ) {
		FUNC1( "No file to assemble" );
	}

	FUNC3();
	FUNC0();

	{
		symbol_t *s;

		for ( i = 0, s = symbols ; s ; s = s->next, i++ ) /* nop */ ;

		if (options.verbose)
		{
			FUNC9("%d symbols defined\n", i);
			FUNC8(symtable);
			FUNC8(optable);
		}
	}

	end = FUNC2 ();
	FUNC9 ("%5.0f seconds elapsed\n", end-start);

	return errorCount;
}