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
struct stat {scalar_t__ st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  errorfilename ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void) {
    struct stat st;
    char *slash;

    if (!errorfilename)
        return;

    /* don't delete the log file if it contains something */
    if ((FUNC1(errorfilename, &st)) == -1 || st.st_size > 0)
        return;

    if (FUNC3(errorfilename) == -1)
        return;

    if ((slash = FUNC2(errorfilename, '/')) != NULL) {
        *slash = '\0';
        /* possibly fails with ENOTEMPTY if there are files (or
         * sockets) left. */
        FUNC0(errorfilename);
    }
}