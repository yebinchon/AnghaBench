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
 int CTL_HW ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int HW_MEMSIZE ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  _SC_PHYS_PAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  errorfile ; 
 char* errorfilename ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/ * logbuffer ; 
 int /*<<< orphan*/  FUNC7 () ; 
 long long physical_mem_bytes ; 
 int /*<<< orphan*/  purge_zerobyte_logfile ; 
 scalar_t__ shmlog_size ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 long long FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int,long long*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC11(void) {
    if (!errorfilename) {
        if (!(errorfilename = FUNC6("errorlog")))
            FUNC5(stderr, "Could not initialize errorlog\n");
        else {
            errorfile = FUNC4(errorfilename, "w");
            if (!errorfile) {
                FUNC5(stderr, "Could not initialize errorlog on %s: %s\n",
                        errorfilename, FUNC8(errno));
            } else {
                if (FUNC2(FUNC3(errorfile), F_SETFD, FD_CLOEXEC)) {
                    FUNC5(stderr, "Could not set close-on-exec flag\n");
                }
            }
        }
    }
    if (physical_mem_bytes == 0) {
#if defined(__APPLE__)
        int mib[2] = {CTL_HW, HW_MEMSIZE};
        size_t length = sizeof(long long);
        sysctl(mib, 2, &physical_mem_bytes, &length, NULL, 0);
#else
        physical_mem_bytes = (long long)FUNC9(_SC_PHYS_PAGES) *
                             FUNC9(_SC_PAGESIZE);
#endif
    }
    /* Start SHM logging if shmlog_size is > 0. shmlog_size is SHMLOG_SIZE by
     * default on development versions, and 0 on release versions. If it is
     * not > 0, the user has turned it off, so let's close the logbuffer. */
    if (shmlog_size > 0 && logbuffer == NULL)
        FUNC7();
    else if (shmlog_size <= 0 && logbuffer)
        FUNC1();
    FUNC0(purge_zerobyte_logfile);
}