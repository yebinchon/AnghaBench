#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yajl_gen ;
struct TYPE_2__ {int /*<<< orphan*/ * restart_state_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_DIR_MODE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  LC_NUMERIC ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  croot ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  get_buf ; 
 char* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  (*) (char*),...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC17(void) {
    FUNC11(LC_NUMERIC, "C");
    yajl_gen gen = FUNC16(NULL);

    FUNC4(gen, croot, true);

    FUNC11(LC_NUMERIC, "");

    const unsigned char *payload;
    size_t length;
    FUNC15(get_buf, &payload, &length);

    /* create a temporary file if one hasn't been specified, or just
     * resolve the tildes in the specified path */
    char *filename;
    if (config.restart_state_path == NULL) {
        filename = FUNC6("restart-state");
        if (!filename)
            return NULL;
    } else {
        filename = FUNC10(config.restart_state_path);
    }

    /* create the directory, it could have been cleaned up before restarting or
     * may not exist at all in case it was user-specified. */
    char *filenamecopy = FUNC12(filename);
    char *base = FUNC3(filenamecopy);
    FUNC0("Creating \"%s\" for storing the restart layout\n", base);
    if (FUNC7(base, DEFAULT_DIR_MODE) != 0)
        FUNC1("Could not create \"%s\" for storing the restart layout, layout will be lost.\n", base);
    FUNC5(filenamecopy);

    int fd = FUNC8(filename, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
    if (fd == -1) {
        FUNC9("open()");
        FUNC5(filename);
        return NULL;
    }

    if (FUNC14(fd, payload, length) == -1) {
        FUNC1("Could not write restart layout to \"%s\", layout will be lost: %s\n", filename, FUNC13(errno));
        FUNC5(filename);
        FUNC2(fd);
        return NULL;
    }

    FUNC2(fd);

    if (length > 0) {
        FUNC0("layout: %.*s\n", (int)length, payload);
    }

    FUNC15(free);

    return filename;
}