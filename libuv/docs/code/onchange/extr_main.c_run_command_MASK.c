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
 int UV_CHANGE ; 
 int UV_RENAME ; 
 int /*<<< orphan*/  command ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t*) ; 

void FUNC3(uv_fs_event_t *handle, const char *filename, int events, int status) {
    char path[1024];
    size_t size = 1023;
    // Does not handle error if path is longer than 1023.
    FUNC2(handle, path, &size);
    path[size] = '\0';

    FUNC0(stderr, "Change detected in %s: ", path);
    if (events & UV_RENAME)
        FUNC0(stderr, "renamed");
    if (events & UV_CHANGE)
        FUNC0(stderr, "changed");

    FUNC0(stderr, " %s\n", filename ? filename : "");
    FUNC1(command);
}