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
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (void* const,size_t const,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char const* const) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const* const) ; 
 scalar_t__ FUNC4 (size_t const,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC6 (char const* const,char*) ; 
 size_t FUNC7 (void* const,int,size_t const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC8 (char* const) ; 

__attribute__((used)) static int FUNC9(const char** fileNamesTable, int nbFiles, U32 specificTest)
{
    int result = 0;
    int fileIdx;

    for (fileIdx=0; fileIdx<nbFiles; fileIdx++) {
        const char* const inFileName = fileNamesTable[fileIdx];
        FILE* const inFile = FUNC6( inFileName, "rb" );
        size_t const benchedSize = FUNC1(inFileName);
        char* const buffer = (char*)FUNC4(benchedSize+16+3, 1);
        void* const alignedBuffer = (buffer+15) - (((size_t)(buffer+15)) & 0xF);  /* align on next 16 bytes */

        /* Checks */
        if ((inFile==NULL) || (inFileName==NULL)) {
            FUNC2("Pb opening %s\n", inFileName);
            FUNC8(buffer);
            return 11;
        }
        if(!buffer) {
            FUNC2("\nError: not enough memory!\n");
            FUNC5(inFile);
            return 12;
        }

        /* Fill input buffer */
        FUNC3(1, "\rLoading %s...        \n", inFileName);
        {   size_t const readSize = FUNC7(alignedBuffer, 1, benchedSize, inFile);
            FUNC5(inFile);
            if(readSize != benchedSize) {
                FUNC2("\nError: problem reading file '%s' !!    \n", inFileName);
                FUNC8(buffer);
                return 13;
        }   }

        /* bench */
        result |= FUNC0(alignedBuffer, benchedSize, specificTest);

        FUNC8(buffer);
    }

    return result;
}