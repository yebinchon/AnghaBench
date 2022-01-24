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
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(char *buf) {
    char *walk = buf;
    char *line = buf;
    while (*walk != '\0') {
        if (*walk != '\n') {
            walk++;
            continue;
        }

        /* check for some v4-only statements */
        if (FUNC3(line, "bindcode", FUNC2("bindcode")) == 0 ||
            FUNC3(line, "force_focus_wrapping", FUNC2("force_focus_wrapping")) == 0 ||
            FUNC3(line, "# i3 config file (v4)", FUNC2("# i3 config file (v4)")) == 0 ||
            FUNC3(line, "workspace_layout", FUNC2("workspace_layout")) == 0) {
            FUNC0("deciding for version 4 due to this line: %.*s\n", (int)(walk - line), line);
            return 4;
        }

        /* if this is a bind statement, we can check the command */
        if (FUNC3(line, "bind", FUNC2("bind")) == 0) {
            char *bind = FUNC1(line, ' ');
            if (bind == NULL)
                goto next;
            while ((*bind == ' ' || *bind == '\t') && *bind != '\0')
                bind++;
            if (*bind == '\0')
                goto next;
            if ((bind = FUNC1(bind, ' ')) == NULL)
                goto next;
            while ((*bind == ' ' || *bind == '\t') && *bind != '\0')
                bind++;
            if (*bind == '\0')
                goto next;
            if (FUNC3(bind, "layout", FUNC2("layout")) == 0 ||
                FUNC3(bind, "floating", FUNC2("floating")) == 0 ||
                FUNC3(bind, "workspace", FUNC2("workspace")) == 0 ||
                FUNC3(bind, "focus left", FUNC2("focus left")) == 0 ||
                FUNC3(bind, "focus right", FUNC2("focus right")) == 0 ||
                FUNC3(bind, "focus up", FUNC2("focus up")) == 0 ||
                FUNC3(bind, "focus down", FUNC2("focus down")) == 0 ||
                FUNC3(bind, "border normal", FUNC2("border normal")) == 0 ||
                FUNC3(bind, "border 1pixel", FUNC2("border 1pixel")) == 0 ||
                FUNC3(bind, "border pixel", FUNC2("border pixel")) == 0 ||
                FUNC3(bind, "border borderless", FUNC2("border borderless")) == 0 ||
                FUNC3(bind, "--no-startup-id", FUNC2("--no-startup-id")) == 0 ||
                FUNC3(bind, "bar", FUNC2("bar")) == 0) {
                FUNC0("deciding for version 4 due to this line: %.*s\n", (int)(walk - line), line);
                return 4;
            }
        }

    next:
        /* advance to the next line */
        walk++;
        line = walk;
    }

    return 3;
}