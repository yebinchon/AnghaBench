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
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  X_OK ; 
 int /*<<< orphan*/  _CS_PATH ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,size_t) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char**,char*,char const*,...) ; 
 char* FUNC7 (size_t) ; 
 char* FUNC8 (char*,size_t) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/ * FUNC10 (char const*,char) ; 
 char* FUNC11 (char*,char*) ; 

char *FUNC12(const char *argv0) {
    size_t destpath_size = 1024;
    size_t tmp_size = 1024;
    char *destpath = FUNC7(destpath_size);
    char *tmp = FUNC7(tmp_size);

#if defined(__linux__) || defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
/* Linux and Debian/kFreeBSD provide /proc/self/exe */
#if defined(__linux__) || defined(__FreeBSD_kernel__)
    const char *exepath = "/proc/self/exe";
#elif defined(__FreeBSD__)
    const char *exepath = "/proc/curproc/file";
#endif
    ssize_t linksize;

    while ((linksize = FUNC5(exepath, destpath, destpath_size)) == (ssize_t)destpath_size) {
        destpath_size = destpath_size * 2;
        destpath = FUNC8(destpath, destpath_size);
    }
    if (linksize != -1) {
        /* readlink() does not NULL-terminate strings, so we have to. */
        destpath[linksize] = '\0';
        FUNC2(tmp);
        return destpath;
    }
#endif

    /* argv[0] is most likely a full path if it starts with a slash. */
    if (argv0[0] == '/') {
        FUNC2(tmp);
        FUNC2(destpath);
        return FUNC9(argv0);
    }

    /* if argv[0] contains a /, prepend the working directory */
    if (FUNC10(argv0, '/') != NULL) {
        char *retgcwd;
        while ((retgcwd = FUNC3(tmp, tmp_size)) == NULL && errno == ERANGE) {
            tmp_size = tmp_size * 2;
            tmp = FUNC8(tmp, tmp_size);
        }
        if (retgcwd != NULL) {
            FUNC2(destpath);
            FUNC6(&destpath, "%s/%s", tmp, argv0);
            FUNC2(tmp);
            return destpath;
        }
    }

    /* Fall back to searching $PATH (or _CS_PATH in absence of $PATH). */
    char *path = FUNC4("PATH");
    if (path == NULL) {
        /* _CS_PATH is typically something like "/bin:/usr/bin" */
        while (FUNC1(_CS_PATH, tmp, tmp_size) > tmp_size) {
            tmp_size = tmp_size * 2;
            tmp = FUNC8(tmp, tmp_size);
        }
        FUNC6(&path, ":%s", tmp);
    } else {
        path = FUNC9(path);
    }
    const char *component;
    char *str = path;
    while (1) {
        if ((component = FUNC11(str, ":")) == NULL)
            break;
        str = NULL;
        FUNC2(destpath);
        FUNC6(&destpath, "%s/%s", component, argv0);
        /* Of course this is not 100% equivalent to actually exec()ing the
		 * binary, but meh. */
        if (FUNC0(destpath, X_OK) == 0) {
            FUNC2(path);
            FUNC2(tmp);
            return destpath;
        }
    }
    FUNC2(destpath);
    FUNC2(path);
    FUNC2(tmp);

    /* Last resort: maybe it’s in /usr/bin? */
    return FUNC9("/usr/bin/i3-nagbar");
}