
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int parsedLine ;
typedef int XXH64_hash_t ;
typedef int XXH32_hash_t ;
struct TYPE_8__ {int xxh64; int xxh32; } ;
struct TYPE_9__ {int quit; scalar_t__ xxhBits; int filename; int nMismatchedChecksums; int nOpenOrReadFailures; TYPE_1__ canonical; int nProperlyFormattedLines; int nMixedFormatLines; int nImproperlyFormattedLines; } ;
struct TYPE_10__ {char* inFileName; int statusOnly; int quiet; int blockSize; int blockBuf; scalar_t__ warn; int lineBuf; int inFile; int lineMax; TYPE_2__ report; } ;
typedef TYPE_2__ ParsedLine ;
typedef TYPE_2__ ParseFileReport ;
typedef TYPE_4__ ParseFileArg ;
typedef int LineStatus ;
typedef int GetLineResult ;
typedef int FILE ;


 int BMK_hashStream (int *,int ,int *,int ,int ) ;
 int DISPLAY (char*,char const* const,...) ;
 int DISPLAYRESULT (char*,char const* const,...) ;







 scalar_t__ ParseLine_ok ;
 int XXH32_hashFromCanonical (int *) ;
 int XXH64_hashFromCanonical (int *) ;
 int algo_xxh32 ;
 int algo_xxh64 ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int getLine (int *,int *,int ) ;
 int memset (TYPE_2__* const,int ,int) ;
 scalar_t__ parseLine (TYPE_2__*,int ) ;

__attribute__((used)) static void parseFile1(ParseFileArg* parseFileArg)
{
    const char* const inFileName = parseFileArg->inFileName;
    ParseFileReport* const report = &parseFileArg->report;

    unsigned long lineNumber = 0;
    memset(report, 0, sizeof(*report));

    while (!report->quit) {
        FILE* fp = ((void*)0);
        LineStatus lineStatus = 129;
        GetLineResult getLineResult;
        ParsedLine parsedLine;
        memset(&parsedLine, 0, sizeof(parsedLine));

        lineNumber++;
        if (lineNumber == 0) {


            DISPLAY("%s : too many checksum lines\n", inFileName);
            report->quit = 1;
            break;
        }

        getLineResult = getLine(&parseFileArg->lineBuf, &parseFileArg->lineMax,
                                parseFileArg->inFile);
        if (getLineResult != 132) {
            if (getLineResult == 134) break;

            switch (getLineResult)
            {
            case 132:
            case 134:


                break;

            default:
                DISPLAY("%s : %lu: unknown error\n", inFileName, lineNumber);
                break;

            case 133:
                DISPLAY("%s : %lu: too long line\n", inFileName, lineNumber);
                break;

            case 131:
                DISPLAY("%s : %lu: out of memory\n", inFileName, lineNumber);
                break;
            }
            report->quit = 1;
            break;
        }

        if (parseLine(&parsedLine, parseFileArg->lineBuf) != ParseLine_ok) {
            report->nImproperlyFormattedLines++;
            if (parseFileArg->warn) {
                DISPLAY("%s : %lu: improperly formatted XXHASH checksum line\n"
                    , inFileName, lineNumber);
            }
            continue;
        }

        if (report->xxhBits != 0 && report->xxhBits != parsedLine.xxhBits) {

            report->nImproperlyFormattedLines++;
            report->nMixedFormatLines++;
            if (parseFileArg->warn) {
                DISPLAY("%s : %lu: improperly formatted XXHASH checksum line (XXH32/64)\n"
                    , inFileName, lineNumber);
            }
            continue;
        }

        report->nProperlyFormattedLines++;
        if (report->xxhBits == 0) {
            report->xxhBits = parsedLine.xxhBits;
        }

        fp = fopen(parsedLine.filename, "rb");
        if (fp == ((void*)0)) {
            lineStatus = 130;
        } else {
            lineStatus = 129;
            switch (parsedLine.xxhBits)
            {
            case 32:
                { XXH32_hash_t xxh;
                    BMK_hashStream(&xxh, algo_xxh32, fp, parseFileArg->blockBuf, parseFileArg->blockSize);
                    if (xxh == XXH32_hashFromCanonical(&parsedLine.canonical.xxh32)) {
                        lineStatus = 128;
                } }
                break;

            case 64:
                { XXH64_hash_t xxh;
                    BMK_hashStream(&xxh, algo_xxh64, fp, parseFileArg->blockBuf, parseFileArg->blockSize);
                    if (xxh == XXH64_hashFromCanonical(&parsedLine.canonical.xxh64)) {
                        lineStatus = 128;
                } }
                break;

            default:
                break;
            }
            fclose(fp);
        }

        switch (lineStatus)
        {
        default:
            DISPLAY("%s : unknown error\n", inFileName);
            report->quit = 1;
            break;

        case 130:
            report->nOpenOrReadFailures++;
            if (!parseFileArg->statusOnly) {
                DISPLAYRESULT("%s : %lu: FAILED open or read %s\n"
                    , inFileName, lineNumber, parsedLine.filename);
            }
            break;

        case 128:
        case 129:
            { int b = 1;
                if (lineStatus == 128) {

                    if (parseFileArg->quiet) b = 0;
                } else {
                    report->nMismatchedChecksums++;
                }

                if (b && !parseFileArg->statusOnly) {
                    DISPLAYRESULT("%s: %s\n", parsedLine.filename
                        , lineStatus == 128 ? "OK" : "FAILED");
            } }
            break;
        }
    }
}
