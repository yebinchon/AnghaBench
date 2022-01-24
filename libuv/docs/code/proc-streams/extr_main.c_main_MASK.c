#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {TYPE_1__ data; void* flags; } ;
typedef  TYPE_2__ uv_stdio_container_t ;
struct TYPE_7__ {int stdio_count; char* file; char** args; int /*<<< orphan*/  exit_cb; TYPE_2__* stdio; } ;

/* Variables and functions */
 void* UV_IGNORE ; 
 void* UV_INHERIT_FD ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  child_req ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  on_exit ; 
 TYPE_3__ options ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 char* FUNC7 (int) ; 

int FUNC8() {
    loop = FUNC3();

    size_t size = 500;
    char path[size];
    FUNC4(path, &size);
    FUNC1(path + (FUNC2(path) - FUNC2("proc-streams")), "test");

    char* args[2];
    args[0] = path;
    args[1] = NULL;

    /* ... */

    options.stdio_count = 3;
    uv_stdio_container_t child_stdio[3];
    child_stdio[0].flags = UV_IGNORE;
    child_stdio[1].flags = UV_IGNORE;
    child_stdio[2].flags = UV_INHERIT_FD;
    child_stdio[2].data.fd = 2;
    options.stdio = child_stdio;

    options.exit_cb = on_exit;
    options.file = args[0];
    options.args = args;

    int r;
    if ((r = FUNC6(loop, &child_req, &options))) {
        FUNC0(stderr, "%s\n", FUNC7(r));
        return 1;
    }

    return FUNC5(loop, UV_RUN_DEFAULT);
}