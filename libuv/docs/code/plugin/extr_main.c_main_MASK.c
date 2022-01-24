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
typedef  int /*<<< orphan*/  uv_lib_t ;
typedef  int /*<<< orphan*/  (* init_plugin_function ) () ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,void**) ; 

int FUNC5(int argc, char **argv) {
    if (argc == 1) {
        FUNC0(stderr, "Usage: %s [plugin1] [plugin2] ...\n", argv[0]);
        return 0;
    }

    uv_lib_t *lib = (uv_lib_t*) FUNC1(sizeof(uv_lib_t));
    while (--argc) {
        FUNC0(stderr, "Loading %s\n", argv[argc]);
        if (FUNC3(argv[argc], lib)) {
            FUNC0(stderr, "Error: %s\n", FUNC2(lib));
            continue;
        }

        init_plugin_function init_plugin;
        if (FUNC4(lib, "initialize", (void **) &init_plugin)) {
            FUNC0(stderr, "dlsym error: %s\n", FUNC2(lib));
            continue;
        }

        init_plugin();
    }

    return 0;
}