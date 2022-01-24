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

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char const* stdinName ; 

__attribute__((used)) static int FUNC2(const char** fnList, int fnTotal,
                         algoType hashType, endianess displayEndianess)
{
    int fnNb;
    int result = 0;

    if (fnTotal==0)
        return FUNC0(stdinName, hashType, displayEndianess);

    for (fnNb=0; fnNb<fnTotal; fnNb++)
        result += FUNC0(fnList[fnNb], hashType, displayEndianess);
    FUNC1("\r%70s\r", "");
    return result;
}