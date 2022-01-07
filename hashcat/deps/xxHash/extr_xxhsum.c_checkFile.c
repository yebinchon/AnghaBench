
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ endianess ;
typedef void* U32 ;
struct TYPE_4__ {scalar_t__ nProperlyFormattedLines; scalar_t__ nImproperlyFormattedLines; scalar_t__ nOpenOrReadFailures; scalar_t__ nMismatchedChecksums; scalar_t__ quit; } ;
struct TYPE_5__ {char const* inFileName; char* lineBuf; int blockSize; char* blockBuf; void* quiet; void* warn; void* statusOnly; void* strictMode; scalar_t__ lineMax; int * inFile; TYPE_1__ report; } ;
typedef TYPE_1__ ParseFileReport ;
typedef TYPE_2__ ParseFileArg ;
typedef int FILE ;


 scalar_t__ DEFAULT_LINE_LENGTH ;
 int DISPLAY (char*,...) ;
 int DISPLAYRESULT (char*,scalar_t__) ;
 scalar_t__ const big_endian ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int parseFile1 (TYPE_2__* const) ;
 int * stdin ;
 char const* stdinName ;

__attribute__((used)) static int checkFile(const char* inFileName,
                     const endianess displayEndianess,
                     U32 strictMode,
                     U32 statusOnly,
                     U32 warn,
                     U32 quiet)
{
    int result = 0;
    FILE* inFile = ((void*)0);
    ParseFileArg parseFileArgBody;
    ParseFileArg* const parseFileArg = &parseFileArgBody;
    ParseFileReport* const report = &parseFileArg->report;

    if (displayEndianess != big_endian) {

        DISPLAY( "Check file mode doesn't support little endian\n" );
        return 0;
    }


    if (inFileName == stdinName) {


        inFile = stdin;
    } else {
        inFile = fopen( inFileName, "rt" );
    }

    if (inFile == ((void*)0)) {
        DISPLAY( "Pb opening %s\n", inFileName);
        return 0;
    }

    parseFileArg->inFileName = inFileName;
    parseFileArg->inFile = inFile;
    parseFileArg->lineMax = DEFAULT_LINE_LENGTH;
    parseFileArg->lineBuf = (char*) malloc((size_t) parseFileArg->lineMax);
    parseFileArg->blockSize = 64 * 1024;
    parseFileArg->blockBuf = (char*) malloc(parseFileArg->blockSize);
    parseFileArg->strictMode = strictMode;
    parseFileArg->statusOnly = statusOnly;
    parseFileArg->warn = warn;
    parseFileArg->quiet = quiet;

    parseFile1(parseFileArg);

    free(parseFileArg->blockBuf);
    free(parseFileArg->lineBuf);

    if (inFile != stdin) fclose(inFile);



    if (report->nProperlyFormattedLines == 0) {
        DISPLAY("%s: no properly formatted XXHASH checksum lines found\n", inFileName);
    } else if (!statusOnly) {
        if (report->nImproperlyFormattedLines) {
            DISPLAYRESULT("%lu lines are improperly formatted\n"
                , report->nImproperlyFormattedLines);
        }
        if (report->nOpenOrReadFailures) {
            DISPLAYRESULT("%lu listed files could not be read\n"
                , report->nOpenOrReadFailures);
        }
        if (report->nMismatchedChecksums) {
            DISPLAYRESULT("%lu computed checksums did NOT match\n"
                , report->nMismatchedChecksums);
    } }



    result = report->nProperlyFormattedLines != 0
            && report->nMismatchedChecksums == 0
            && report->nOpenOrReadFailures == 0
            && (!strictMode || report->nImproperlyFormattedLines == 0)
            && report->quit == 0;
    return result;
}
