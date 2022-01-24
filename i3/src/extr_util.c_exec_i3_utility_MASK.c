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
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**) ; 
 int FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * start_argv ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void FUNC7(char *name, char *argv[]) {
    /* start the migration script, search PATH first */
    char *migratepath = name;
    argv[0] = migratepath;
    FUNC2(migratepath, argv);

    /* if the script is not in path, maybe the user installed to a strange
     * location and runs the i3 binary with an absolute path. We use
     * argv[0]’s dirname */
    char *pathbuf = FUNC5(start_argv[0]);
    char *dir = FUNC1(pathbuf);
    FUNC4(&migratepath, "%s/%s", dir, name);
    argv[0] = migratepath;
    FUNC2(migratepath, argv);

#if defined(__linux__)
    /* on linux, we have one more fall-back: dirname(/proc/self/exe) */
    char buffer[BUFSIZ];
    if (FUNC3("/proc/self/exe", buffer, BUFSIZ) == -1) {
        FUNC6("could not read /proc/self/exe");
        FUNC0(1);
    }
    dir = FUNC1(buffer);
    FUNC4(&migratepath, "%s/%s", dir, name);
    argv[0] = migratepath;
    FUNC2(migratepath, argv);
#endif

    FUNC6("Could not start %s", name);
    FUNC0(2);
}