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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ g_defaultAlgo ; 

__attribute__((used)) static int FUNC2(const char* exename)
{
    FUNC0( FUNC1(exename) );
    FUNC0( "Usage :\n");
    FUNC0( "      %s [arg] [filenames]\n", exename);
    FUNC0( "When no filename provided, or - provided : use stdin as input\n");
    FUNC0( "Arguments :\n");
    FUNC0( " -H# : hash selection : 0=32bits, 1=64bits (default: %i)\n", (int)g_defaultAlgo);
    FUNC0( " -c  : read xxHash sums from the [filenames] and check them\n");
    FUNC0( " -h  : help \n");
    return 0;
}