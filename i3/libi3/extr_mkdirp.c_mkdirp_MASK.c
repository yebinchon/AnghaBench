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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (char*,char) ; 

int FUNC9(const char *path, mode_t mode) {
    if (FUNC3(path, mode) == 0)
        return 0;
    if (errno == EEXIST) {
        struct stat st;
        /* Check that the named file actually is a directory. */
        if (FUNC5(path, &st)) {
            FUNC0("stat(%s) failed: %s\n", path, FUNC6(errno));
            return -1;
        }
        if (!FUNC1(st.st_mode)) {
            FUNC0("mkdir(%s) failed: %s\n", path, FUNC6(ENOTDIR));
            return -1;
        }
        return 0;
    } else if (errno != ENOENT) {
        FUNC0("mkdir(%s) failed: %s\n", path, FUNC6(errno));
        return -1;
    }
    char *copy = FUNC4(path);
    /* strip trailing slashes, if any */
    while (copy[FUNC7(copy) - 1] == '/')
        copy[FUNC7(copy) - 1] = '\0';

    char *sep = FUNC8(copy, '/');
    if (sep == NULL) {
        FUNC2(copy);
        return -1;
    }
    *sep = '\0';
    int result = -1;
    if (FUNC9(copy, mode) == 0)
        result = FUNC9(path, mode);
    FUNC2(copy);

    return result;
}