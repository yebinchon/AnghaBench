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
typedef  int pid_t ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char**) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int*) ; 
 int FUNC9 (int,char*,int) ; 
 char* FUNC10 (int,int) ; 
 char* FUNC11 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (int*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC15(char *input, off_t size) {
    int writepipe[2];
    int readpipe[2];

    if (FUNC8(writepipe) != 0 ||
        FUNC8(readpipe) != 0) {
        FUNC13("migrate_config: Could not create pipes");
        return NULL;
    }

    pid_t pid = FUNC6();
    if (pid == -1) {
        FUNC13("Could not fork()");
        return NULL;
    }

    /* child */
    if (pid == 0) {
        /* close writing end of writepipe, connect reading side to stdin */
        FUNC3(writepipe[1]);
        FUNC4(writepipe[0], 0);

        /* close reading end of readpipe, connect writing side to stdout */
        FUNC3(readpipe[0]);
        FUNC4(readpipe[1], 1);

        static char *argv[] = {
            NULL, /* will be replaced by the executable path */
            NULL};
        FUNC5("i3-migrate-config-to-v4", argv);
    }

    /* parent */

    /* close reading end of the writepipe (connected to the script’s stdin) */
    FUNC3(writepipe[0]);

    /* write the whole config file to the pipe, the script will read everything
     * immediately */
    if (FUNC14(writepipe[1], input, size) == -1) {
        FUNC13("Could not write to pipe");
        return NULL;
    }
    FUNC3(writepipe[1]);

    /* close writing end of the readpipe (connected to the script’s stdout) */
    FUNC3(readpipe[1]);

    /* read the script’s output */
    int conv_size = 65535;
    char *converted = FUNC10(conv_size, 1);
    int read_bytes = 0, ret;
    do {
        if (read_bytes == conv_size) {
            conv_size += 65535;
            converted = FUNC11(converted, conv_size);
        }
        ret = FUNC9(readpipe[0], converted + read_bytes, conv_size - read_bytes);
        if (ret == -1) {
            FUNC13("Cannot read from pipe");
            FUNC0(converted);
            return NULL;
        }
        read_bytes += ret;
    } while (ret > 0);

    /* get the returncode */
    int status;
    FUNC12(&status);
    if (!FUNC2(status)) {
        FUNC7(stderr, "Child did not terminate normally, using old config file (will lead to broken behaviour)\n");
        FUNC0(converted);
        return NULL;
    }

    int returncode = FUNC1(status);
    if (returncode != 0) {
        FUNC7(stderr, "Migration process exit code was != 0\n");
        if (returncode == 2) {
            FUNC7(stderr, "could not start the migration script\n");
            /* TODO: script was not found. tell the user to fix their system or create a v4 config */
        } else if (returncode == 1) {
            FUNC7(stderr, "This already was a v4 config. Please add the following line to your config file:\n");
            FUNC7(stderr, "# i3 config file (v4)\n");
            /* TODO: nag the user with a message to include a hint for i3 in their config file */
        }
        FUNC0(converted);
        return NULL;
    }

    return converted;
}