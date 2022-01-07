
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t const U64 ;


 size_t BMK_GetFileSize (char const*) ;
 scalar_t__ BMK_findMaxMem (size_t const) ;
 int DISPLAY (char*,char const*,int) ;

__attribute__((used)) static size_t BMK_selectBenchedSize(const char* fileName)
{ U64 const inFileSize = BMK_GetFileSize(fileName);
    size_t benchedSize = (size_t) BMK_findMaxMem(inFileSize);
    if ((U64)benchedSize > inFileSize) benchedSize = (size_t)inFileSize;
    if (benchedSize < inFileSize) {
        DISPLAY("Not enough memory for '%s' full size; testing %i MB only...\n", fileName, (int)(benchedSize>>20));
    }
    return benchedSize;
}
