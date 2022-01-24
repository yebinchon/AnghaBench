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
typedef  int /*<<< orphan*/  color_t ;

/* Variables and functions */
 scalar_t__ MOD_Mod4 ; 
 scalar_t__ STEP_GENERATE ; 
 scalar_t__ STEP_WELCOME ; 
 int /*<<< orphan*/  bold_font ; 
 int /*<<< orphan*/  config_path ; 
 int /*<<< orphan*/  conn ; 
 scalar_t__ current_step ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  font ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ modifier ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  surface ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void) {
    const color_t black = FUNC1("#000000");
    const color_t white = FUNC1("#FFFFFF");
    const color_t green = FUNC1("#00FF00");
    const color_t red = FUNC1("#FF0000");

    /* draw background */
    FUNC0(&surface, black);

    FUNC4(&font);

    if (current_step == STEP_WELCOME) {
        FUNC5(2, 2, "You have not configured i3 yet.", white, black);
        FUNC5(2, 3, "Do you want me to generate a config at", white, black);

        char *msg;
        FUNC3(&msg, "%s?", config_path);
        FUNC5(2, 4, msg, white, black);
        FUNC2(msg);

        FUNC5(13, 6, "Yes, generate the config", white, black);
        FUNC5(13, 8, "No, I will use the defaults", white, black);

        FUNC5(4, 6, "<Enter>", green, black);

        FUNC5(5, 8, "<ESC>", red, black);
    }

    if (current_step == STEP_GENERATE) {
        FUNC5(2, 2, "Please choose either:", white, black);
        FUNC5(13, 4, "Win as default modifier", white, black);
        FUNC5(13, 5, "Alt as default modifier", white, black);
        FUNC5(2, 7, "Afterwards, press", white, black);
        FUNC5(13, 9, "to write the config", white, black);
        FUNC5(13, 10, "to abort", white, black);

        /* the not-selected modifier */
        if (modifier == MOD_Mod4)
            FUNC5(5, 5, "<Alt>", white, black);
        else
            FUNC5(5, 4, "<Win>", white, black);

        /* the selected modifier */
        FUNC4(&bold_font);
        if (modifier == MOD_Mod4)
            FUNC5(2, 4, "-> <Win>", white, black);
        else
            FUNC5(2, 5, "-> <Alt>", white, black);

        FUNC4(&font);
        FUNC5(4, 9, "<Enter>", green, black);

        FUNC5(5, 10, "<ESC>", red, black);
    }

    FUNC6(conn);

    return 1;
}