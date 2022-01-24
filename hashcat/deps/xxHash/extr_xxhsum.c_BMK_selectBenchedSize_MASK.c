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
typedef  size_t const U64 ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (size_t const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

__attribute__((used)) static size_t FUNC3(const char* fileName)
{   U64 const inFileSize = FUNC0(fileName);
    size_t benchedSize = (size_t) FUNC1(inFileSize);
    if ((U64)benchedSize > inFileSize) benchedSize = (size_t)inFileSize;
    if (benchedSize < inFileSize) {
        FUNC2("Not enough memory for '%s' full size; testing %i MB only...\n", fileName, (int)(benchedSize>>20));
    }
    return benchedSize;
}