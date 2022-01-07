
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int endianess ;
typedef int algoType ;
typedef int U32 ;


 int BMK_benchFiles (char const**,int,int) ;
 int BMK_benchInternal (size_t,int) ;
 int BMK_hashFiles (char const**,int,int ,int ) ;
 int BMK_sanityCheck () ;
 int DISPLAY (int ) ;
 int DISPLAYLEVEL (int,int ) ;
 scalar_t__ IS_CONSOLE (int ) ;
 int WELCOME_MESSAGE (char const* const) ;
 size_t XXH_DEFAULT_SAMPLE_SIZE ;
 int algo_xxh32 ;
 int badusage (char const* const) ;
 int big_endian ;
 int checkFiles (char const**,int,int ,int,int,int,int) ;
 int g_defaultAlgo ;
 int g_displayLevel ;
 void* g_nbIterations ;
 int little_endian ;
 void* readU32FromChar (char const**) ;
 int stdin ;
 int strcmp (char const*,char*) ;
 int * strstr (char const* const,char*) ;
 int usage_advanced (char const* const) ;

int main(int argc, const char** argv)
{
    int i, filenamesStart = 0;
    const char* const exename = argv[0];
    U32 benchmarkMode = 0;
    U32 fileCheckMode = 0;
    U32 strictMode = 0;
    U32 statusOnly = 0;
    U32 warn = 0;
    U32 quiet = 0;
    U32 specificTest = 0;
    size_t keySize = XXH_DEFAULT_SAMPLE_SIZE;
    algoType algo = g_defaultAlgo;
    endianess displayEndianess = big_endian;


    if (strstr(exename, "xxh32sum") != ((void*)0)) algo = algo_xxh32;

    for(i=1; i<argc; i++) {
        const char* argument = argv[i];

        if(!argument) continue;

        if (!strcmp(argument, "--little-endian")) { displayEndianess = little_endian; continue; }
        if (!strcmp(argument, "--check")) { fileCheckMode = 1; continue; }
        if (!strcmp(argument, "--strict")) { strictMode = 1; continue; }
        if (!strcmp(argument, "--status")) { statusOnly = 1; continue; }
        if (!strcmp(argument, "--quiet")) { quiet = 1; continue; }
        if (!strcmp(argument, "--warn")) { warn = 1; continue; }
        if (!strcmp(argument, "--help")) { return usage_advanced(exename); }
        if (!strcmp(argument, "--version")) { DISPLAY(WELCOME_MESSAGE(exename)); return 0; }

        if (*argument!='-') {
            if (filenamesStart==0) filenamesStart=i;
            continue;
        }


        argument++;

        while (*argument!=0) {
            switch(*argument)
            {

            case 'V':
                DISPLAY(WELCOME_MESSAGE(exename)); return 0;


            case 'h':
                return usage_advanced(exename);


            case 'H':
                algo = (algoType)(argument[1] - '0');
                argument+=2;
                break;


            case 'c':
                fileCheckMode=1;
                argument++;
                break;


            case 'w':
                warn=1;
                argument++;
                break;


            case 'b':
                argument++;
                benchmarkMode = 1;
                specificTest = readU32FromChar(&argument);
                break;


            case 'i':
                argument++;
                g_nbIterations = readU32FromChar(&argument);
                break;


            case 'B':
                argument++;
                keySize = readU32FromChar(&argument);
                break;


            case 'q':
                argument++;
                g_displayLevel--;
                break;

            default:
                return badusage(exename);
            }
        }
    }


    if (benchmarkMode) {
        DISPLAYLEVEL(2, WELCOME_MESSAGE(exename) );
        BMK_sanityCheck();
        if (filenamesStart==0) return BMK_benchInternal(keySize, specificTest);
        return BMK_benchFiles(argv+filenamesStart, argc-filenamesStart, specificTest);
    }


    if ( (filenamesStart==0) && IS_CONSOLE(stdin) ) return badusage(exename);

    if (filenamesStart==0) filenamesStart = argc;
    if (fileCheckMode) {
        return checkFiles(argv+filenamesStart, argc-filenamesStart,
                          displayEndianess, strictMode, statusOnly, warn, quiet);
    } else {
        return BMK_hashFiles(argv+filenamesStart, argc-filenamesStart, algo, displayEndianess);
    }
}
