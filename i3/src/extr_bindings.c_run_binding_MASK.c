#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char* pattern; } ;
struct TYPE_15__ {TYPE_1__ font; } ;
struct TYPE_14__ {int /*<<< orphan*/  command; } ;
struct TYPE_13__ {scalar_t__ parse_error; scalar_t__ needs_tree_render; } ;
typedef  int /*<<< orphan*/  Con ;
typedef  TYPE_2__ CommandResult ;
typedef  TYPE_3__ Binding ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  command_error_nagbar_pid ; 
 TYPE_8__ config ; 
 int /*<<< orphan*/  errorfilename ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_3__*) ; 
 TYPE_2__* FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char**,char*,int /*<<< orphan*/ ,...) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC8 () ; 

CommandResult *FUNC9(Binding *bind, Con *con) {
    char *command;

    /* We need to copy the binding and command since “reload” may be part of
     * the command, and then the memory that bind points to may not contain the
     * same data anymore. */
    if (con == NULL)
        command = FUNC6(bind->command);
    else
        FUNC5(&command, "[con_id=\"%p\"] %s", *con, bind->command);

    Binding *bind_cp = FUNC0(bind);
    CommandResult *result = FUNC4(command, NULL, NULL);
    FUNC2(command);

    if (result->needs_tree_render)
        FUNC8();

    if (result->parse_error) {
        char *pageraction;
        FUNC5(&pageraction, "i3-sensible-pager \"%s\"\n", errorfilename);
        char *argv[] = {
            NULL, /* will be replaced by the executable path */
            "-f",
            config.font.pattern,
            "-t",
            "error",
            "-m",
            "The configured command for this shortcut could not be run successfully.",
            "-b",
            "show errors",
            pageraction,
            NULL};
        FUNC7(&command_error_nagbar_pid, argv);
        FUNC2(pageraction);
    }

    FUNC3("run", bind_cp);
    FUNC1(bind_cp);

    return result;
}