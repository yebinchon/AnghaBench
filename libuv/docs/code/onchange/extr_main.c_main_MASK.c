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
typedef  int /*<<< orphan*/  uv_fs_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  UV_FS_EVENT_RECURSIVE ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 char* command ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  run_command ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(int argc, char **argv) {
    if (argc <= 2) {
        FUNC0(stderr, "Usage: %s <command> <file1> [file2 ...]\n", argv[0]);
        return 1;
    }

    loop = FUNC2();
    command = argv[1];

    while (argc-- > 2) {
        FUNC0(stderr, "Adding watch on %s\n", argv[argc]);
        uv_fs_event_t *fs_event_req = FUNC1(sizeof(uv_fs_event_t));
        FUNC3(loop, fs_event_req);
        // The recursive flag watches subdirectories too.
        FUNC4(fs_event_req, run_command, argv[argc], UV_FS_EVENT_RECURSIVE);
    }

    return FUNC5(loop, UV_RUN_DEFAULT);
}