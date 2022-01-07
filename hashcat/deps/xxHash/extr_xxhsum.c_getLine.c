
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetLineResult ;
typedef int FILE ;


 int DEFAULT_LINE_LENGTH ;
 int const EOF ;
 int GetLine_eof ;
 int GetLine_exceedMaxLineLength ;
 int GetLine_ok ;
 int GetLine_outOfMemory ;
 int MAX_LINE_LENGTH ;
 int fgetc (int *) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ realloc (char*,int) ;

__attribute__((used)) static GetLineResult getLine(char** lineBuf, int* lineMax, FILE* inFile)
{
    GetLineResult result = GetLine_ok;
    int len = 0;

    if ((*lineBuf == ((void*)0)) || (*lineMax<1)) {
        free(*lineBuf);
        *lineMax = 0;
        *lineBuf = (char*)malloc(DEFAULT_LINE_LENGTH);
        if(*lineBuf == ((void*)0)) return GetLine_outOfMemory;
        *lineMax = DEFAULT_LINE_LENGTH;
    }

    for (;;) {
        const int c = fgetc(inFile);
        if (c == EOF) {



            if (len == 0) result = GetLine_eof;
            break;
        }


        if (len+1 >= *lineMax) {
            char* newLineBuf = ((void*)0);
            int newBufSize = *lineMax;

            newBufSize += (newBufSize/2) + 1;
            if (newBufSize > MAX_LINE_LENGTH) newBufSize = MAX_LINE_LENGTH;
            if (len+1 >= newBufSize) return GetLine_exceedMaxLineLength;

            newLineBuf = (char*) realloc(*lineBuf, newBufSize);
            if (newLineBuf == ((void*)0)) return GetLine_outOfMemory;

            *lineBuf = newLineBuf;
            *lineMax = newBufSize;
        }

        if (c == '\n') break;
        (*lineBuf)[len++] = (char) c;
    }

    (*lineBuf)[len] = '\0';
    return result;
}
