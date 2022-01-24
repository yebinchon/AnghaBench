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
struct stat {int dummy; } ;
struct passwd {char* pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct passwd* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char**,char*,char const*,...) ; 
 scalar_t__ FUNC9 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

char *FUNC11(const char *prefix) {
    /* dir stores the directory path for this and all subsequent calls so that
     * we only create a temporary directory once per i3 instance. */
    static char *dir = NULL;
    if (dir == NULL) {
        /* Check if XDG_RUNTIME_DIR is set. If so, we use XDG_RUNTIME_DIR/i3 */
        if ((dir = FUNC1("XDG_RUNTIME_DIR"))) {
            char *tmp;
            FUNC8(&tmp, "%s/i3", dir);
            dir = tmp;
            struct stat buf;
            if (FUNC9(dir, &buf) != 0) {
                if (FUNC5(dir, 0700) == -1) {
                    FUNC10("Could not mkdir(%s)", dir);
                    FUNC0(EXIT_FAILURE, "Check permissions of $XDG_RUNTIME_DIR = '%s'",
                         FUNC1("XDG_RUNTIME_DIR"));
                    FUNC7("mkdir()");
                    return NULL;
                }
            }
        } else {
            /* If not, we create a (secure) temp directory using the template
             * /tmp/i3-<user>.XXXXXX */
            struct passwd *pw = FUNC3(FUNC4());
            const char *username = pw ? pw->pw_name : "unknown";
            FUNC8(&dir, "/tmp/i3-%s.XXXXXX", username);
            /* mkdtemp modifies dir */
            if (FUNC6(dir) == NULL) {
                FUNC7("mkdtemp()");
                return NULL;
            }
        }
    }
    char *filename;
    FUNC8(&filename, "%s/%s.%d", dir, prefix, FUNC2());
    return filename;
}