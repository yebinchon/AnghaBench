#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct TYPE_6__ {int event_x; int event_y; } ;
typedef  TYPE_1__ xcb_button_release_event_t ;
struct TYPE_7__ {char* action; scalar_t__ terminal; } ;
typedef  TYPE_2__ button_t ;
struct TYPE_8__ {scalar_t__ x; scalar_t__ width; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 char* argv0 ; 
 TYPE_5__ btn_close ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_2__* FUNC6 (scalar_t__,int) ; 
 char* FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 int FUNC9 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char**,char*,char*) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void FUNC16(xcb_connection_t *conn, xcb_button_release_event_t *event) {
    FUNC10("button released on x = %d, y = %d\n",
           event->event_x, event->event_y);
    /* If the user hits the close button, we exit(0) */
    if (event->event_x >= btn_close.x && event->event_x < btn_close.x + btn_close.width)
        FUNC1(0);
    button_t *button = FUNC6(event->event_x, event->event_y);
    if (!button)
        return;

    /* We need to create a custom script containing our actual command
     * since not every terminal emulator which is contained in
     * i3-sensible-terminal supports -e with multiple arguments (and not
     * all of them support -e with one quoted argument either).
     *
     * NB: The paths need to be unique, that is, don’t assume users close
     * their nagbars at any point in time (and they still need to work).
     * */
    char *script_path = FUNC8("nagbar-cmd");

    int fd = FUNC9(script_path, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
    if (fd == -1) {
        FUNC15("Could not create temporary script to store the nagbar command");
        return;
    }
    FILE *script = FUNC3(fd, "w");
    if (script == NULL) {
        FUNC15("Could not fdopen() temporary script to store the nagbar command");
        return;
    }
    FUNC4(script, "#!/bin/sh\nrm %s\n%s", script_path, button->action);
    /* Also closes fd */
    FUNC2(script);

    char *link_path;
    char *exe_path = FUNC7(argv0);
    FUNC11(&link_path, "%s.nagbar_cmd", script_path);
    if (FUNC14(exe_path, link_path) == -1) {
        FUNC0(EXIT_FAILURE, "Failed to symlink %s to %s", link_path, exe_path);
    }

    char *terminal_cmd;
    if (button->terminal) {
        FUNC11(&terminal_cmd, "i3-sensible-terminal -e %s", link_path);
    } else {
        terminal_cmd = FUNC12(link_path);
    }
    FUNC10("argv0 = %s\n", argv0);
    FUNC10("terminal_cmd = %s\n", terminal_cmd);

    FUNC13(terminal_cmd);

    FUNC5(link_path);
    FUNC5(terminal_cmd);
    FUNC5(script_path);
    FUNC5(exe_path);

    /* TODO: unset flag, re-render */
}