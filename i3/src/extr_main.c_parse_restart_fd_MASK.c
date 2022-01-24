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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,long*,int) ; 

__attribute__((used)) static int FUNC3(void) {
    const char *restart_fd = FUNC1("_I3_RESTART_FD");
    if (restart_fd == NULL) {
        return -1;
    }

    long int fd = -1;
    if (!FUNC2(restart_fd, &fd, 10)) {
        FUNC0("Malformed _I3_RESTART_FD \"%s\"\n", restart_fd);
        return -1;
    }
    return fd;
}