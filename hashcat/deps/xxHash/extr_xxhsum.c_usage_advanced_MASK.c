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
 int /*<<< orphan*/  g_nbIterations ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char* exename)
{
    FUNC1(exename);
    FUNC0( "Advanced :\n");
    FUNC0( " --little-endian : hash printed using little endian convention (default: big endian)\n");
    FUNC0( " -V, --version   : display version\n");
    FUNC0( " -h, --help      : display long help and exit\n");
    FUNC0( " -b  : benchmark mode \n");
    FUNC0( " -i# : number of iterations (benchmark mode; default %i)\n", g_nbIterations);
    FUNC0( "\n");
    FUNC0( "The following four options are useful only when verifying checksums (-c):\n");
    FUNC0( "--strict : don't print OK for each successfully verified file\n");
    FUNC0( "--status : don't output anything, status code shows success\n");
    FUNC0( "--quiet  : exit non-zero for improperly formatted checksum lines\n");
    FUNC0( "--warn   : warn about improperly formatted checksum lines\n");
    return 0;
}