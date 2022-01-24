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
typedef  int /*<<< orphan*/  endianess ;
typedef  int /*<<< orphan*/  algoType ;
typedef  int U32 ;

/* Variables and functions */
 int FUNC0 (char const**,int,int) ; 
 int FUNC1 (size_t,int) ; 
 int FUNC2 (char const**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const* const) ; 
 size_t XXH_DEFAULT_SAMPLE_SIZE ; 
 int /*<<< orphan*/  algo_xxh32 ; 
 int FUNC8 (char const* const) ; 
 int /*<<< orphan*/  big_endian ; 
 int FUNC9 (char const**,int,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  g_defaultAlgo ; 
 int /*<<< orphan*/  g_displayLevel ; 
 void* g_nbIterations ; 
 int /*<<< orphan*/  little_endian ; 
 void* FUNC10 (char const**) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC12 (char const* const,char*) ; 
 int FUNC13 (char const* const) ; 

int FUNC14(int argc, const char** argv)
{
    int i, filenamesStart = 0;
    const char* const exename = argv[0];
    U32 benchmarkMode = 0;
    U32 fileCheckMode = 0;
    U32 strictMode    = 0;
    U32 statusOnly    = 0;
    U32 warn          = 0;
    U32 quiet         = 0;
    U32 specificTest  = 0;
    size_t keySize    = XXH_DEFAULT_SAMPLE_SIZE;
    algoType algo     = g_defaultAlgo;
    endianess displayEndianess = big_endian;

    /* special case : xxh32sum default to 32 bits checksum */
    if (FUNC12(exename, "xxh32sum") != NULL) algo = algo_xxh32;

    for(i=1; i<argc; i++) {
        const char* argument = argv[i];

        if(!argument) continue;   /* Protection, if argument empty */

        if (!FUNC11(argument, "--little-endian")) { displayEndianess = little_endian; continue; }
        if (!FUNC11(argument, "--check")) { fileCheckMode = 1; continue; }
        if (!FUNC11(argument, "--strict")) { strictMode = 1; continue; }
        if (!FUNC11(argument, "--status")) { statusOnly = 1; continue; }
        if (!FUNC11(argument, "--quiet")) { quiet = 1; continue; }
        if (!FUNC11(argument, "--warn")) { warn = 1; continue; }
        if (!FUNC11(argument, "--help")) { return FUNC13(exename); }
        if (!FUNC11(argument, "--version")) { FUNC4(FUNC7(exename)); return 0; }

        if (*argument!='-') {
            if (filenamesStart==0) filenamesStart=i;   /* only supports a continuous list of filenames */
            continue;
        }

        /* command selection */
        argument++;   /* note : *argument=='-' */

        while (*argument!=0) {
            switch(*argument)
            {
            /* Display version */
            case 'V':
                FUNC4(FUNC7(exename)); return 0;

            /* Display help on usage */
            case 'h':
                return FUNC13(exename);

            /* select hash algorithm */
            case 'H':
                algo = (algoType)(argument[1] - '0');
                argument+=2;
                break;

            /* File check mode */
            case 'c':
                fileCheckMode=1;
                argument++;
                break;

            /* Warning mode (file check mode only, alias of "--warning") */
            case 'w':
                warn=1;
                argument++;
                break;

            /* Trigger benchmark mode */
            case 'b':
                argument++;
                benchmarkMode = 1;
                specificTest = FUNC10(&argument);   /* select one specific test (hidden option) */
                break;

            /* Modify Nb Iterations (benchmark only) */
            case 'i':
                argument++;
                g_nbIterations = FUNC10(&argument);
                break;

            /* Modify Block size (benchmark only) */
            case 'B':
                argument++;
                keySize = FUNC10(&argument);
                break;

            /* Modify verbosity of benchmark output (hidden option) */
            case 'q':
                argument++;
                g_displayLevel--;
                break;

            default:
                return FUNC8(exename);
            }
        }
    }   /* for(i=1; i<argc; i++) */

    /* Check benchmark mode */
    if (benchmarkMode) {
        FUNC5(2, FUNC7(exename) );
        FUNC3();
        if (filenamesStart==0) return FUNC1(keySize, specificTest);
        return FUNC0(argv+filenamesStart, argc-filenamesStart, specificTest);
    }

    /* Check if input is defined as console; trigger an error in this case */
    if ( (filenamesStart==0) && FUNC6(stdin) ) return FUNC8(exename);

    if (filenamesStart==0) filenamesStart = argc;
    if (fileCheckMode) {
        return FUNC9(argv+filenamesStart, argc-filenamesStart,
                          displayEndianess, strictMode, statusOnly, warn, quiet);
    } else {
        return FUNC2(argv+filenamesStart, argc-filenamesStart, algo, displayEndianess);
    }
}