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
typedef  scalar_t__ yajl_status ;
typedef  int /*<<< orphan*/  yajl_handle ;
typedef  char uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
struct stat {int /*<<< orphan*/  st_mtime; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  mtime ;
typedef  int /*<<< orphan*/  destpath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 scalar_t__ I3_IPC_MESSAGE_TYPE_GET_VERSION ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  conn_screen ; 
 double FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 char* FUNC10 () ; 
 char* human_readable_version ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int,scalar_t__*,scalar_t__*,char**) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 char* loaded_config_file_name ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int FUNC17 (int,char*,int) ; 
 int FUNC18 (char*,char*,size_t) ; 
 char* FUNC19 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char**,char*,char*) ; 
 char* FUNC21 (size_t) ; 
 char* FUNC22 (char*,size_t) ; 
 int FUNC23 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC24 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  version_callbacks ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 scalar_t__ yajl_status_ok ; 

void FUNC30(void) {
    if (FUNC9("DISPLAY") == NULL) {
        FUNC7(stderr, "\nYour DISPLAY environment variable is not set.\n");
        FUNC7(stderr, "Are you running i3 via SSH or on a virtual console?\n");
        FUNC7(stderr, "Try DISPLAY=:0 i3 --moreversion\n");
        FUNC5(EXIT_FAILURE);
    }

    char *pid_from_atom = FUNC19("I3_PID", conn, conn_screen);
    if (pid_from_atom == NULL) {
        /* If I3_PID is not set, the running version is older than 4.2-200. */
        FUNC16("\nRunning version: < 4.2-200\n");
        FUNC5(EXIT_SUCCESS);
    }

    /* Inform the user of what we are doing. While a single IPC request is
     * really fast normally, in case i3 hangs, this will not terminate. */
    FUNC16("(Getting version from running i3, press ctrl-c to abort…)");
    FUNC6(stdout);

    int sockfd = FUNC11(NULL);
    if (FUNC13(sockfd, 0, I3_IPC_MESSAGE_TYPE_GET_VERSION,
                         (uint8_t *)"") == -1)
        FUNC3(EXIT_FAILURE, "IPC: write()");

    uint32_t reply_length;
    uint32_t reply_type;
    uint8_t *reply;
    int ret;
    if ((ret = FUNC12(sockfd, &reply_type, &reply_length, &reply)) != 0) {
        if (ret == -1)
            FUNC3(EXIT_FAILURE, "IPC: read()");
        FUNC5(EXIT_FAILURE);
    }

    if (reply_type != I3_IPC_MESSAGE_TYPE_GET_VERSION)
        FUNC4(EXIT_FAILURE, "Got reply type %d, but expected %d (GET_VERSION)", reply_type, I3_IPC_MESSAGE_TYPE_GET_VERSION);

    yajl_handle handle = FUNC27(&version_callbacks, NULL, NULL);

    yajl_status state = FUNC29(handle, (const unsigned char *)reply, (int)reply_length);
    if (state != yajl_status_ok)
        FUNC4(EXIT_FAILURE, "Could not parse my own reply. That's weird. reply is %.*s", (int)reply_length, reply);

    FUNC16("\rRunning i3 version: %s (pid %s)\n", human_readable_version, pid_from_atom);

    if (loaded_config_file_name) {
        struct stat sb;
        time_t now;
        char mtime[64];
        FUNC16("Loaded i3 config: %s", loaded_config_file_name);
        if (FUNC23(loaded_config_file_name, &sb) == -1) {
            FUNC16("\n");
            FUNC0("Cannot stat config file \"%s\"\n", loaded_config_file_name);
        } else {
            FUNC24(mtime, sizeof(mtime), "%c", FUNC14(&(sb.st_mtime)));
            FUNC26(&now);
            FUNC16(" (Last modified: %s, %.f seconds ago)\n", mtime, FUNC2(now, sb.st_mtime));
        }
    }

#ifdef __linux__
    size_t destpath_size = 1024;
    ssize_t linksize;
    char *exepath;
    char *destpath = FUNC21(destpath_size);

    FUNC20(&exepath, "/proc/%d/exe", FUNC10());

    while ((linksize = FUNC18(exepath, destpath, destpath_size)) == (ssize_t)destpath_size) {
        destpath_size = destpath_size * 2;
        destpath = FUNC22(destpath, destpath_size);
    }
    if (linksize == -1)
        FUNC3(EXIT_FAILURE, "readlink(%s)", exepath);

    /* readlink() does not NULL-terminate strings, so we have to. */
    destpath[linksize] = '\0';

    FUNC16("\n");
    FUNC16("The i3 binary you just called: %s\n", destpath);

    FUNC8(exepath);
    FUNC20(&exepath, "/proc/%s/exe", pid_from_atom);

    while ((linksize = FUNC18(exepath, destpath, destpath_size)) == (ssize_t)destpath_size) {
        destpath_size = destpath_size * 2;
        destpath = FUNC22(destpath, destpath_size);
    }
    if (linksize == -1)
        FUNC3(EXIT_FAILURE, "readlink(%s)", exepath);

    /* readlink() does not NULL-terminate strings, so we have to. */
    destpath[linksize] = '\0';

    /* Check if "(deleted)" is the readlink result. If so, the running version
     * does not match the file on disk. */
    if (FUNC25(destpath, "(deleted)") != NULL)
        FUNC16("RUNNING BINARY DIFFERENT FROM BINARY ON DISK!\n");

    /* Since readlink() might put a "(deleted)" somewhere in the buffer and
     * stripping that out seems hackish and ugly, we read the process’s argv[0]
     * instead. */
    FUNC8(exepath);
    FUNC20(&exepath, "/proc/%s/cmdline", pid_from_atom);

    int fd;
    if ((fd = FUNC15(exepath, O_RDONLY)) == -1)
        FUNC3(EXIT_FAILURE, "open(%s)", exepath);
    if (FUNC17(fd, destpath, sizeof(destpath)) == -1)
        FUNC3(EXIT_FAILURE, "read(%s)", exepath);
    FUNC1(fd);

    FUNC16("The i3 binary you are running: %s\n", destpath);

    FUNC8(exepath);
    FUNC8(destpath);
#endif

    FUNC28(handle);
    FUNC8(reply);
    FUNC8(pid_from_atom);
}