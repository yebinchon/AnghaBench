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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(char *elf_name) {
    FUNC0("Usage: %s -b bar_id [-s sock_path] [-t] [-h] [-v]\n", elf_name);
    FUNC0("\n");
    FUNC0("-b, --bar_id       <bar_id>\tBar ID for which to get the configuration\n");
    FUNC0("-s, --socket       <sock_path>\tConnect to i3 via <sock_path>\n");
    FUNC0("-t, --transparency Enable transparency (RGBA colors)\n");
    FUNC0("-h, --help         Display this help message and exit\n");
    FUNC0("-v, --version      Display version number and exit\n");
    FUNC0("-V, --verbose      Enable verbose mode\n");
    FUNC0("\n");
    FUNC0(" PLEASE NOTE that i3bar will be automatically started by i3\n"
           " as soon as there is a 'bar' configuration block in your\n"
           " config file. You should never need to start it manually.\n");
    FUNC0("\n");
}